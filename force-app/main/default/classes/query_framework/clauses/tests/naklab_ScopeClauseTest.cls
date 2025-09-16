/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_ScopeClauseTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_ScopeClause clause = new naklab_ScopeClause( naklab_ScopeName.Enumeration.SCOPE_NAME_EVERYTHING );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_ScopeClause clause = new naklab_ScopeClause( naklab_ScopeName.Enumeration.SCOPE_NAME_EVERYTHING );
        // Test
        Test.startTest();
        String result = clause.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'USING SCOPE everything' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}