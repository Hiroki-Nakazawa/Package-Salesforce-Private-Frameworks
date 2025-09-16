/**
 * @author H.Nakazawa
 * @since  2025-09-16
 */
@isTest
public class naklab_TestExtendedQueryField extends naklab_QueryField {

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  field
     * @param  lookupFields
     */
    public naklab_TestExtendedQueryField( Schema.SObjectField field , List<Schema.SObjectField> lookupFields ){
        super( field , lookupFields );
    }

}