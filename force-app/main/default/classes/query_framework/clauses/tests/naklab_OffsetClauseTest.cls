/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_OffsetClauseTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_OffsetClause clause = new naklab_OffsetClause( 200 );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_OffsetClause clause = new naklab_OffsetClause( 200 );
        // Test
        Test.startTest();
        String result = clause.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'OFFSET 200' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}