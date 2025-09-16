/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_FromClauseTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_FromClause clause = new naklab_FromClause( Schema.User.SObjectType );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_FromClause clause = new naklab_FromClause( Schema.User.SObjectType );
        // Test
        Test.startTest();
        String result = clause.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'FROM User' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}