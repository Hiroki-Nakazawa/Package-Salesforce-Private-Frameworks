/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_WhereClauseTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_WhereClause clause = new naklab_WhereClause( naklab_LogicalOperator.Enumeration.LOGICAL_OPERATOR_AND );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_WhereClause childClause = new naklab_WhereClause( naklab_LogicalOperator.Enumeration.LOGICAL_OPERATOR_AND );
        childClause.add( Schema.User.Id , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , 'ID' );
        childClause.add( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , 'ID' );
        naklab_WhereClause clause = new naklab_WhereClause( naklab_LogicalOperator.Enumeration.LOGICAL_OPERATOR_AND );
        clause.add( Schema.User.Id , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , 'ID' );
        clause.add( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , 'ID' );
        clause.add( childClause );
        // Test
        Test.startTest();
        String result = clause.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'WHERE Id = ID AND Profile.Id = ID AND (Id = ID AND Profile.Id = ID)' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}