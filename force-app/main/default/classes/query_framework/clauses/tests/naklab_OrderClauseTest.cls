/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_OrderClauseTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_OrderClause clause = new naklab_OrderClause();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_OrderClause clause = new naklab_OrderClause();
        clause.add( Schema.User.Id );
        clause.add( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } );
        clause.add( Schema.User.Id , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING );
        clause.add( Schema.User.Id , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
        clause.add( Schema.User.Id , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
        clause.add( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
        clause.add( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING );
        clause.add( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
        // Test
        Test.startTest();
        String result = clause.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'ORDER BY Id ASC NULLS FIRST , Profile.Id ASC NULLS FIRST , Id ASC NULLS FIRST , Id ASC NULLS FIRST , Id ASC NULLS FIRST , Profile.Id ASC NULLS FIRST , Profile.Id ASC NULLS FIRST , Profile.Id ASC NULLS FIRST' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}