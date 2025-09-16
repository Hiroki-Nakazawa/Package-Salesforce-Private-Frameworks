/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_LimitClause extends naklab_Clause {
    
    // Limit Number
    private Integer limitNumber;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  limitNumber
     */
    public naklab_LimitClause( Integer limitNumber ){
        super( naklab_ClauseName.Enumeration.CLAUSE_NAME_LIMIT );
        this.limitNumber = limitNumber;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public override String build(){
        // Confirm
        if( this.limitNumber == null ){ return ''; }
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
        if( this.limitNumber == null ){ return ''; }
        // Return
        return String.valueOf( limitNumber );
    }

}