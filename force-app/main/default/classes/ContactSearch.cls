public class ContactSearch {
    public static List<Contact> searchForContacts(String a, String b){
        
        List<Contact> contatos = [SELECT Id, Name FROM Contact WHERE LastName =: a AND MailingPostalCode =: b];
        
        for(Contact x : contatos){
            System.debug(x);
        }
        return contatos;
    }
}