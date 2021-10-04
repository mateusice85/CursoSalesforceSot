//Desafio 1
public class AccountUtils {
    public static List<Account> accountsByState(String Name){
        List<Account> conta = [SELECT Id, Name FROM Account WHERE BillingState = :Name];
        return conta;
    }
}