/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_LimitClauseTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_LimitClause clause = new naklab_LimitClause( 200 );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_LimitClause clause = new naklab_LimitClause( 200 );
        // Test
        Test.startTest();
        String result = clause.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'LIMIT 200' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}