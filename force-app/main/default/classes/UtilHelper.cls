public class UtilHelper {
    
    public class ReceitaWSData {
        public String nome;
        public String uf;
        public String municipio;
        public String fantasia;
    }

    @future(callout=true)
    public static void servicoAtualizarNomePorCNPJ(String escolaId) {

        List<Escola__c> escolas = [SELECT Id, CNPJ__c FROM Escola__c WHERE Id = :escolaId];

        if(!escolas.isEmpty()) {
            String jsonData = '';

            Escola__c escola = escolas[0];

            try {
                String cnpj = escola.CNPJ__c.replace('.', '').replace('/', '').replace('-', '');

                HttpRequest requisicao = new HttpRequest();
                requisicao.setTimeout(5000);
                requisicao.setMethod('GET');
                requisicao.setEndpoint(String.format('https://www.receitaws.com.br/v1/cnpj/{0}', new String[] { cnpj }));

                Http caller = new Http();
                HttpResponse resposta = caller.send(requisicao);

                jsonData = resposta.getBody();

                ReceitaWSData dados = (ReceitaWSData)JSON.deserialize(jsonData, ReceitaWSData.class);

                escola.RazaoSocial__c = dados.nome;
                escola.Cidade__c = dados.municipio;
                escola.Estado__c = dados.uf;
                escola.Pais__c = 'BRASIL';
                escola.Name = dados.fantasia != '' ? dados.fantasia : dados.nome;

                TriggerHandler.bypass('EscolaTriggerHandler');
                update escolas;
                TriggerHandler.clearByPass('EscolaTriggerHandler');
            }
            catch(Exception ex) {
                System.debug(ex);
                System.debug('JSON: ' + jsonData);
            }
        }
    }
}