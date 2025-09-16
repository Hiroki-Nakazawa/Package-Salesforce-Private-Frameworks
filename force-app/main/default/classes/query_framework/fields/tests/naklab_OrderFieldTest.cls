/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_OrderFieldTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_OrderField field = new naklab_OrderField( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_OrderField field = new naklab_OrderField( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
        // Test
        Test.startTest();
        String result = field.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'Profile.Id ASC NULLS FIRST' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}