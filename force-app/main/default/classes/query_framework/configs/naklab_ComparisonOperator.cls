/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_ComparisonOperator {
    
    // Comparison Operator Enumeration
    public Enum Enumeration {
        COMPARISON_OPERATOR_EQUALS                     ,
        COMPARISON_OPERATOR_EQUALS_WITH_BIND           ,
        COMPARISON_OPERATOR_NOT_EQUALS                 ,
        COMPARISON_OPERATOR_NOT_EQUALS_WITH_BIND       ,
        COMPARISON_OPERATOR_IN                         ,
        COMPARISON_OPERATOR_IN_WITH_BIND               ,
        COMPARISON_OPERATOR_NOT_IN                     ,
        COMPARISON_OPERATOR_NOT_IN_WITH_BIND           ,
        COMPARISON_OPERATOR_LESS_THAN                  ,
        COMPARISON_OPERATOR_LESS_THAN_WITH_BIND        ,
        COMPARISON_OPERATOR_GREATER_THAN               ,
        COMPARISON_OPERATOR_GREATER_THAN_WITH_BIND     ,
        COMPARISON_OPERATOR_LESS_OR_EQUAL              ,
        COMPARISON_OPERATOR_LESS_OR_EQUAL_WITH_BIND    ,
        COMPARISON_OPERATOR_GREATER_OR_EQUAL           ,
        COMPARISON_OPERATOR_GREATER_OR_EQUAL_WITH_BIND ,
        COMPARISON_OPERATOR_LIKE                       ,
        COMPARISON_OPERATOR_LIKE_WITH_BIND             ,
        COMPARISON_OPERATOR_INCLUDES                   ,
        COMPARISON_OPERATOR_INCLUDES_WITH_BIND         ,
        COMPARISON_OPERATOR_EXCLUDES                   ,
        COMPARISON_OPERATOR_EXCLUDES_WITH_BIND
    }
    public static final Map<Enumeration,String> COMPARISON_OPERATOR_STRINGS = new Map<Enumeration,String>{
        Enumeration.COMPARISON_OPERATOR_EQUALS                     => '='          ,
        Enumeration.COMPARISON_OPERATOR_EQUALS_WITH_BIND           => '= :'        ,
        Enumeration.COMPARISON_OPERATOR_NOT_EQUALS                 => '!='         ,
        Enumeration.COMPARISON_OPERATOR_NOT_EQUALS_WITH_BIND       => '!= :'       ,
        Enumeration.COMPARISON_OPERATOR_IN                         => 'IN'         ,
        Enumeration.COMPARISON_OPERATOR_IN_WITH_BIND               => 'IN :'       ,
        Enumeration.COMPARISON_OPERATOR_NOT_IN                     => 'NOT IN'     ,
        Enumeration.COMPARISON_OPERATOR_NOT_IN_WITH_BIND           => 'NOT IN :'   ,
        Enumeration.COMPARISON_OPERATOR_LESS_THAN                  => '<'          ,
        Enumeration.COMPARISON_OPERATOR_LESS_THAN_WITH_BIND        => '< :'        ,
        Enumeration.COMPARISON_OPERATOR_GREATER_THAN               => '>'          ,
        Enumeration.COMPARISON_OPERATOR_GREATER_THAN_WITH_BIND     => '> :'        ,
        Enumeration.COMPARISON_OPERATOR_LESS_OR_EQUAL              => '<='         ,
        Enumeration.COMPARISON_OPERATOR_LESS_OR_EQUAL_WITH_BIND    => '<= :'       ,
        Enumeration.COMPARISON_OPERATOR_GREATER_OR_EQUAL           => '>='         ,
        Enumeration.COMPARISON_OPERATOR_GREATER_OR_EQUAL_WITH_BIND => '>= :'       ,
        Enumeration.COMPARISON_OPERATOR_LIKE                       => 'LIKE'       ,
        Enumeration.COMPARISON_OPERATOR_LIKE_WITH_BIND             => 'LIKE :'     ,
        Enumeration.COMPARISON_OPERATOR_INCLUDES                   => 'INCLUDES'   ,
        Enumeration.COMPARISON_OPERATOR_INCLUDES_WITH_BIND         => 'INCLUDES :' ,
        Enumeration.COMPARISON_OPERATOR_EXCLUDES                   => 'EXCLUDES'   ,
        Enumeration.COMPARISON_OPERATOR_EXCLUDES_WITH_BIND         => 'EXCLUDES :'
    };

}