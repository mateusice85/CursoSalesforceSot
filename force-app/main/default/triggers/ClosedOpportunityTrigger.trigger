trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    ///*
    List<Task> tasks = new List<Task>();
    for(Opportunity a : Trigger.new){
        if(a.StageName == 'Closed Won'){
            tasks.Add(new Task(OwnerId=a.OwnerId,
                               Status='Not Started',
                               Subject='Follow Up Test Task',
                               WhatId=a.Id,
                               Priority='Normal'
                              ));
        }
    }
    //
    Integer aa = 1;
    for(Task x : tasks){
        System.debug(x+' '+aa);
        aa++;
    }
    //
    if (tasks.size() > 0) {
        insert tasks;
    }
//*/
}