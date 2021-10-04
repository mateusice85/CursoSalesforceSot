//Desafio 2
public class AccountTriggerHandler {

    public static void CreateAccounts(List<Account> contas){
 
        for(Account conta : contas){
            if(conta.ShippingState != conta.BillingState){
                conta.ShippingState = conta.BillingState;
            }
        }
    }
}