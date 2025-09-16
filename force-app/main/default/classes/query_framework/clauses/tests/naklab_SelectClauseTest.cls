/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_SelectClauseTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_SelectClause clause = new naklab_SelectClause();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_SelectClause clause = new naklab_SelectClause();
        clause.add( Schema.User.Id );
        clause.add( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } );
        // Test
        Test.startTest();
        String result = clause.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'SELECT Id , Profile.Id' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}