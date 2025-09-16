/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_NullHandling {
    
    // Null Handling Enumeration
    public Enum Enumeration {
        NULL_HANDLING_FIRST ,
        NULL_HANDLING_LAST
    }
    public static final Map<Enumeration,String> NULL_HANDLING_STRINGS = new Map<Enumeration,String>{
        Enumeration.NULL_HANDLING_FIRST => 'NULLS FIRST' ,
        Enumeration.NULL_HANDLING_LAST  => 'NULLS LAST'
    };

}