/**
 * @author H.Nakazawa
 * @since  2025-09-16
 */
@isTest
public class naklab_TestExtendedDomainLayer extends naklab_DomainLayer {

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  sObjectType
     * @param  records
     */
    public naklab_TestExtendedDomainLayer( Schema.SObjectType sObjectType , List<SObject> records ){
        super( sObjectType , records );
    }

}