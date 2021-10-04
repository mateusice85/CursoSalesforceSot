@IsTest
public class Classe_Teste {
    @IsTest
    public static void validarClasses(){

        List<Escola__c> escolas =  new List<Escola__c>();
        List<Classe__c> classes =  new List<Classe__c>();
        List<Aluno__c> alunos = new List<Aluno__c>();
        
        Integer quantidade = 10;

        Test.startTest();

        for(Integer i = 0; i < quantidade; i++){
            escolas.Add(TesteHelper.criarEscola());  
        }
        insert escolas;

        for(Escola__c escola : escolas){
            classes.Add(TesteHelper.criarClasse(escola.Id));
        }
        insert classes;

        for(Classe__c classe : classes){
            alunos.Add(TesteHelper.criarAluno(classe.Id, classe.Escola__c)); 
        } 
        for(Classe__c classeDif : classes){
            classeDif.Status__c = 'Em curso';
        }
        
        update classes;
        insert alunos;
        Test.stopTest();
    }
}