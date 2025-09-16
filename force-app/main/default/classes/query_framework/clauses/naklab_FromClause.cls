/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_FromClause extends naklab_Clause {
    
    // SObject Type
    private Schema.SObjectType sObjectType;

    /**
     * @author H.Nakazawa
     * @since  2024-02-04
     * @param  sObjectType
     */
    public naklab_FromClause( Schema.SObjectType sObjectType ){
        super( naklab_ClauseName.Enumeration.CLAUSE_NAME_FROM );
        this.sObjectType = sObjectType;
    }

    /**
     * @author H.Nakazawa
     * @since  2024-02-04
     * @return `String`
     */
    public override String build(){
        // Confirm
        if( this.sObjectType == null ){ return ''; }
        // Return
        return super.getClause() + ' ' + this.buildContent();
    }

    /**
     * @author H.Nakazawa
     * @since  2024-02-04
     * @return `String`
     */
    public override String buildContent(){
        // Confirm
        if( this.sObjectType == null ){ return ''; }
        // Return
        return this.sObjectType.getDescribe().getName();
    }

}