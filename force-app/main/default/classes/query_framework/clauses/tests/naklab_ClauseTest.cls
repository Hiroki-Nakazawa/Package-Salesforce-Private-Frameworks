/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_ClauseTest {

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedClause clause = new naklab_TestExtendedClause( naklab_ClauseName.Enumeration.CLAUSE_NAME_FROM );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_TestExtendedClause clause = new naklab_TestExtendedClause( naklab_ClauseName.Enumeration.CLAUSE_NAME_FROM );
        // Test
        Test.startTest();
        String result = clause.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'FROM TEST' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}