trigger Aluno_Trigger on Aluno__c (before insert, before update) {
    // if(Trigger.isInsert || Trigger.isUpdate) {

    //     Set<Id> classeIds = new Set<Id>();

    //     for(Aluno__c aluno : Trigger.new) {
    //         classeIds.add(aluno.Classe__c);
    //     }
        
    //     Map<Id, Classe__c> mapClasse = new Map<Id, Classe__c>([SELECT Id, Escola__c FROM Classe__c WHERE Id IN :classeIds]);

    //     for(Aluno__c aluno : Trigger.new) {
    //         Classe__c classeAluno = mapClasse.get(aluno.Classe__c);

    //         if(classeAluno.Escola__c != aluno.Escola__c) {
    //             aluno.Classe__c.addError('Escola da Classe não é a mesma da Escola do Aluno!');
    //         }
    //     }                                                                                  
    // }
}