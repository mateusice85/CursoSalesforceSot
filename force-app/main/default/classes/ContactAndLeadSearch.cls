public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String lastN){
        List<List<sObject>> searchList = [FIND :lastN IN ALL FIELDS RETURNING Lead(FirstName,LastName),Contact(FirstName,LastName)];

        return searchList;
    }
}