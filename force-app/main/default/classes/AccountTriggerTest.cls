//Desafio 2
@isTest
public class AccountTriggerTest{
    @isTest
    public static void testee(){
        List<Account> contas = new List<Account>();

        for(Integer i = 0; i < 200; i++){
            Account acct = new Account(
            Name=('Test Account 3'+i),
            Phone=('(415)555-8979'+i),
            NumberOfEmployees=i,
            ShippingState='CA',
            BillingCity='CA');
            
            contas.Add(acct);
        }
        Test.startTest();
        insert contas;
        Test.stopTest();

        // Verify that 200 new Accounts were inserted
        List<Account> verifyAccts = [SELECT Id FROM Account];
        System.assertEquals(200, verifyAccts.size());
         
    }  
}