/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_ScopeName {
    
    // Scope Name Enumeration
    public enum Enumeration {
        SCOPE_NAME_EVERYTHING         ,
        SCOPE_NAME_MINE               ,
        SCOPE_NAME_TEAM               ,
        SCOPE_NAME_MINE_AND_MY_GROUPS ,
        SCOPE_NAME_MY_TERRITORY       ,
        SCOPE_NAME_MY_TEAM_TERRITORY  ,
        SCOPE_NAME_DELEGATED          ,
        SCOPE_NAME_SCOPINGRULE
    }
    public static final Map<Enumeration,String> SCOPE_NAME_STRINGS = new Map<Enumeration,String>{
        Enumeration.SCOPE_NAME_EVERYTHING         => 'everything' ,
        Enumeration.SCOPE_NAME_MINE               => 'mine' ,
        Enumeration.SCOPE_NAME_TEAM               => 'team' ,
        Enumeration.SCOPE_NAME_MINE_AND_MY_GROUPS => 'mine_and_my_groups' ,
        Enumeration.SCOPE_NAME_MY_TERRITORY       => 'my_territory' ,
        Enumeration.SCOPE_NAME_MY_TEAM_TERRITORY  => 'my_team_territory' ,
        Enumeration.SCOPE_NAME_DELEGATED          => 'delegated' ,
        Enumeration.SCOPE_NAME_SCOPINGRULE        => 'scopingRule'
    };

}