/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_SortDirection {
    
    // Sort Direction Enumeration
    public Enum Enumeration {
        SORT_DIRECTION_ASCENDING ,
        SORT_DIRECTION_DESCENDING
    }
    public static final Map<Enumeration,String> SORT_DIRECTION_STRINGS = new Map<Enumeration,String>{
        Enumeration.SORT_DIRECTION_ASCENDING  => 'ASC'  ,
        Enumeration.SORT_DIRECTION_DESCENDING => 'DESC'
    };

}