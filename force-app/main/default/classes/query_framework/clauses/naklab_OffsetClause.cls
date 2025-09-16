/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_OffsetClause extends naklab_Clause {
    
    // Offset Number
    private Integer offsetNumber;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  offsetNumber
     */
    public naklab_OffsetClause( Integer offsetNumber ){
        super( naklab_ClauseName.Enumeration.CLAUSE_NAME_OFFSET );
        this.offsetNumber = offsetNumber;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public override String build(){
        // Confirm
        if( this.offsetNumber == null ){ return ''; }
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
        if( this.offsetNumber == null ){ return ''; }
        // Return
        return String.valueOf( offsetNumber );
    }

}