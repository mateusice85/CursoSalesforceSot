public class EscolaTriggerHandler extends TriggerHandler {

    public override void afterUpdate() {
        List<Escola__c> escolas = Trigger.new;
        
        for(Escola__c escola : escolas){
            UtilHelper.servicoAtualizarNomePorCNPJ(escola.Id);
            System.debug('Escola razão social = ' + escola.RazaoSocial__c);
        }
        //comentario de indicação e teste
        //novo comentario 01
    }    
}