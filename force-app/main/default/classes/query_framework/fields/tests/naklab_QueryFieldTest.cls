/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_QueryFieldTest {

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedQueryField field = new naklab_TestExtendedQueryField( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_TestExtendedQueryField field = new naklab_TestExtendedQueryField( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } );
        // Test
        Test.startTest();
        String result = field.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'Profile.Id' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}