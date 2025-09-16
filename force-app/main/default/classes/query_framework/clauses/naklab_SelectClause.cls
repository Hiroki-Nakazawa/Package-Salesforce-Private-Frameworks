/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_SelectClause extends naklab_Clause {
    
    // Select Fields
    private List<naklab_SelectField> selectFields;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public naklab_SelectClause(){
        super( naklab_ClauseName.Enumeration.CLAUSE_NAME_SELECT );
        this.selectFields = new List<naklab_SelectField>();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public override String build(){
        // Confirm
        if( this.selectFields.isEmpty() ){ return ''; }
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
        if( this.selectFields.isEmpty() ){ return ''; }
        // Initialize List
        List<String> selects = new List<String>();
        // Build Select Field
        for( naklab_SelectField selectField : this.selectFields ){
            selects.add( selectField.build() );
        }
        // Return
        return String.join( selects , ' , ' );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @return `naklab_SelectClause`
     */
    public naklab_SelectClause add( Schema.SObjectField field ){
        // Return
        return this.add( field , new List<Schema.SObjectField>() );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @return `naklab_SelectClause`
     */
    public naklab_SelectClause add( Schema.SObjectField field , List<Schema.SObjectField> lookupFields ){
        // Add Select Field
        this.selectFields.add( new naklab_SelectField( field , lookupFields ) );
        // Return
        return this;
    }

}