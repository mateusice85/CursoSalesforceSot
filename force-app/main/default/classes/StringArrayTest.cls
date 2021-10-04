public class StringArrayTest {
    public static List<String> generateStringArray(Integer incoming){
        List<String> strings = new List<String>();
        for(Integer n = 0; n < incoming; n++){
            strings.add('Test '+n);
        }
        return strings;
    }
}