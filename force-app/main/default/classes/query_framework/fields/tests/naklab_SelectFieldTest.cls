/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_SelectFieldTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_SelectField field = new naklab_SelectField( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } );
        Test.stopTest();
    }

}