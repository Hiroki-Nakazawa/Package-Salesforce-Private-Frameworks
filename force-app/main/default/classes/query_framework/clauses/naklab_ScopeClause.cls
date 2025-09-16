/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_ScopeClause extends naklab_Clause {
    
    // Scope Name
    private naklab_ScopeName.Enumeration scopeName;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  scopeName
     */
    public naklab_ScopeClause( naklab_ScopeName.Enumeration scopeName ){
        super( naklab_ClauseName.Enumeration.CLAUSE_NAME_SCOPE );
        this.scopeName = scopeName;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public override String build(){
        // Confirm
        if( this.scopeName == null ){ return ''; }
        // Return
        return super.getClause() + ' ' + this.buildContent();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public override String buildContent(){
        // Confirm
        if( this.scopeName == null ){ return ''; }
        // Return
        return naklab_ScopeName.SCOPE_NAME_STRINGS.get( this.scopeName );
    }

}