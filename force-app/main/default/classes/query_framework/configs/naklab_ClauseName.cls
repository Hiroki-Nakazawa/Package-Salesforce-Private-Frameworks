/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_ClauseName {
    
    // Clause Name Enumeration
    public enum Enumeration {
        CLAUSE_NAME_SELECT ,
        CLAUSE_NAME_FROM   ,
        CLAUSE_NAME_SCOPE  ,
        CLAUSE_NAME_WHERE  ,
        CLAUSE_NAME_ORDER  ,
        CLAUSE_NAME_LIMIT  ,
        CLAUSE_NAME_OFFSET ,
        CLAUSE_NAME_UPDATE
    }
    public static final Map<Enumeration,String> CLAUSE_NAME_STRINGS = new Map<Enumeration,String>{
        Enumeration.CLAUSE_NAME_SELECT => 'SELECT'      ,
        Enumeration.CLAUSE_NAME_FROM   => 'FROM'        ,
        Enumeration.CLAUSE_NAME_SCOPE  => 'USING SCOPE' ,
        Enumeration.CLAUSE_NAME_WHERE  => 'WHERE'       ,
        Enumeration.CLAUSE_NAME_ORDER  => 'ORDER BY'    ,
        Enumeration.CLAUSE_NAME_LIMIT  => 'LIMIT'       ,
        Enumeration.CLAUSE_NAME_OFFSET => 'OFFSET'      ,
        Enumeration.CLAUSE_NAME_UPDATE => 'FOR UPDATE'
    };

}