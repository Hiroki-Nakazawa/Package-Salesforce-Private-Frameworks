/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_SelectField extends naklab_QueryField {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     */
    public naklab_SelectField( Schema.SObjectField field , List<Schema.SObjectField> lookupFields ){
        super( field , lookupFields );
    }

}