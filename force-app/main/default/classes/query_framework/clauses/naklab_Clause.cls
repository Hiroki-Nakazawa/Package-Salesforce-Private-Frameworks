/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public abstract class naklab_Clause {
    
    // Clause Name
    private naklab_ClauseName.Enumeration clauseName;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  clauseName
     */
    public naklab_Clause( naklab_ClauseName.Enumeration clauseName ){
        this.clauseName = clauseName;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public String getClause(){
        // Return
        return naklab_ClauseName.CLAUSE_NAME_STRINGS.get( this.clauseName );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public abstract String build();

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public abstract String buildContent();

}