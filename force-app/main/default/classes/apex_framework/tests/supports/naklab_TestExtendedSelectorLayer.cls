/**
 * @author H.Nakazawa
 * @since  2025-09-16
 */
@isTest
public class naklab_TestExtendedSelectorLayer extends naklab_SelectorLayer {

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `Schema.SObjectType`
     */
    private Schema.SObjectType getSObjectType(){
        return Schema.User.SObjectType;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `List<Schema.SObjectField>`
     */
    private List<Schema.SObjectField> getSObjectFields(){
        return new List<Schema.SObjectField>{ Schema.User.Id };
    }

}