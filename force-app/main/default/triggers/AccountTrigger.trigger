//Desafio 2
trigger AccountTrigger on Account (before insert, before update, before delete) {
    
    if (Trigger.isBefore && Trigger.isInsert) {
        
        AccountTriggerHandler.CreateAccounts(Trigger.New);
    }
    
}