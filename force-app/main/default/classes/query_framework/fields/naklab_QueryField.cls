/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public abstract class naklab_QueryField {
    
    // Field
    private Schema.SObjectField field;
    // Lookup Field
    private List<Schema.SObjectField> lookupFields;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFieldList
     */
    public naklab_QueryField( Schema.SObjectField field , List<Schema.SObjectField> lookupFields ){
        this.field        = field;
        this.lookupFields = lookupFields;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public virtual String build(){
        return convertFieldName();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    private String convertFieldName(){
        // Initialize List
        List<String> fields = new List<String>();
        // Convert Lookup Field
        for( Schema.SObjectField lookupField : this.lookupFields ){
            fields.add( lookupField.getDescribe().getRelationshipName() );
        }
        // Convert Field
        fields.add( this.field.getDescribe().getName() );
        // Return
        return String.join( fields , '.' );
    }

}