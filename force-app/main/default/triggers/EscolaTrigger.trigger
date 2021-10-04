trigger EscolaTrigger on Escola__c (after update) {
    new EscolaTriggerHandler().run();
}