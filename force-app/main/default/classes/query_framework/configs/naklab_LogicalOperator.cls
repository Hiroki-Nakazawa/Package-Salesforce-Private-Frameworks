/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_LogicalOperator {
    
    // Logical Operator Enumeration
    public Enum Enumeration {
        LOGICAL_OPERATOR_AND ,
        LOGICAL_OPERATOR_OR
    }
    public static final Map<Enumeration,String> LOGICAL_OPERATOR_STRINGS = new Map<Enumeration,String>{
        Enumeration.LOGICAL_OPERATOR_AND => 'AND' ,
        Enumeration.LOGICAL_OPERATOR_OR  => 'OR'
    };

}