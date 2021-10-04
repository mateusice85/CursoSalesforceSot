trigger ClasseTrigger on Classe__c (after insert, after update) {

    // try {

    //     if(Trigger.isUpdate){

    //         List<Aluno__c> alunos = [SELECT Id, Classe__c, Ativo__c FROM Aluno__c WHERE Classe__c IN : Trigger.newMap.keyset()];

    //         Map<Id, List<Aluno__c>> mapDeAlunos = new Map<Id, List<Aluno__c>>();

    //         for(Aluno__c aluno : alunos) {
    //             if(mapDeAlunos.containsKey(aluno.Classe__c)) {
    //                 mapDeAlunos.get(aluno.Classe__c).add(aluno);//como já tem a key (aluno.Classe__c) ele adiciona o aluno na proxima posição.
    //             }
    //             else {
    //                 mapDeAlunos.put(aluno.Classe__c, new List<Aluno__c> { aluno });//já que não existe a key, ja de cara damos um put no map 
    //                                     //com a key da classe (aluno.Classe__c) + uma lista nova de alunos (aluno) 
    //             }
    //         }
            
    //         List<List<Aluno__c>> listaEmpilhada = new List<List<Aluno__c>>();

    //         for(Classe__c classe : Trigger.new){              //  V - corresponde a uma key da lista de classe por vez.
    //             List<Aluno__c> alunosClasse = mapDeAlunos.get(classe.Id);//get para pegar a key que veio na lista de updates, "inseridos todos uma vez"

    //             for(Aluno__c ativIn : alunosClasse){//percorre a lista (alunosClasse) da key de classe dessa volta no for externo.
    //                 Integer marcador = 0;

    //                 if(String.valueOf(classe.Status__c) == 'Em curso' && marcador == 0){
    //                     marcador = 1;   
    //                     ativIn.Ativo__c = true;        
    //                 }
    //                 else if(marcador == 1){
    //                     ativIn.Ativo__c = true;
    //                 }
    //                 else{
    //                     ativIn.Ativo__c = false;
    //                 }
    //                 System.debug('****'+ativIn);
    //             }
    //             listaEmpilhada.Add(alunosClasse);
    //         }

    //         List<Aluno__c> alunosUpdate = new List<Aluno__c>(); 

    //         for(List<Aluno__c> listas : listaEmpilhada){
    //             for(Aluno__c alunoDentro : listas){
    //                 alunosUpdate.Add(alunoDentro);
    //             }
    //         }
    //         update alunosUpdate;
    //     }
    // } 
    // catch(DmlException e) {

    //     System.debug('The following exception has occurred: ' + e.getMessage());
    // }
    
}