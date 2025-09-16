/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_QueryBuilderTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_QueryBuilder builder = new naklab_QueryBuilder();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void queryTest(){
        // Test Setup
        naklab_QueryBuilder builder = new naklab_QueryBuilder()
            .setSelectClause( new naklab_SelectClause().add( Schema.User.Id ) )
            .setFromClause( new naklab_FromClause( Schema.User.SObjectType ) )
            .setLimitClause( new naklab_LimitClause( 200 ) );
        // Test
        Test.startTest();
        List<SObject> results = builder.query( System.AccessLevel.SYSTEM_MODE);
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void queryWithBindsTest(){
        // Test Setup
        naklab_QueryBuilder builder = new naklab_QueryBuilder()
            .setSelectClause( new naklab_SelectClause().add( Schema.User.Id ) )
            .setFromClause( new naklab_FromClause( Schema.User.SObjectType ) )
            .setWhereClause( new naklab_WhereClause( naklab_LogicalOperator.Enumeration.LOGICAL_OPERATOR_AND ).add( Schema.User.Id , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , ':ids' ) )
            .setLimitClause( new naklab_LimitClause( 200 ) );
        // Test
        Test.startTest();
        List<SObject> results = builder.query( new Map<String, Object>{ 'ids' => new List<Id>{ UserInfo.getUserId() } } , System.AccessLevel.SYSTEM_MODE );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void queryLocatorTest(){
        // Test Setup
        naklab_QueryBuilder builder = new naklab_QueryBuilder()
            .setSelectClause( new naklab_SelectClause().add( Schema.User.Id ) )
            .setFromClause( new naklab_FromClause( Schema.User.SObjectType ) )
            .setLimitClause( new naklab_LimitClause( 200 ) );
        // Test
        Test.startTest();
        Database.QueryLocator result = builder.queryLocator( System.AccessLevel.SYSTEM_MODE );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void queryLocatorWithBindsTest(){
        // Test Setup
        naklab_QueryBuilder builder = new naklab_QueryBuilder()
            .setSelectClause( new naklab_SelectClause().add( Schema.User.Id ) )
            .setFromClause( new naklab_FromClause( Schema.User.SObjectType ) )
            .setWhereClause( new naklab_WhereClause( naklab_LogicalOperator.Enumeration.LOGICAL_OPERATOR_AND ).add( Schema.User.Id , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , ':ids' ) )
            .setLimitClause( new naklab_LimitClause( 200 ) );
        // Test
        Test.startTest();
        Database.QueryLocator result = builder.queryLocator( new Map<String, Object>{ 'ids' => new List<Id>{ UserInfo.getUserId() } } , System.AccessLevel.SYSTEM_MODE );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_QueryBuilder builder = new naklab_QueryBuilder()
            .setSelectClause( new naklab_SelectClause().add( Schema.User.Id ) )
            .setFromClause( new naklab_FromClause( Schema.User.SObjectType ) )
            .setScopeClause( new naklab_ScopeClause( naklab_ScopeName.Enumeration.SCOPE_NAME_EVERYTHING ) )
            .setWhereClause( new naklab_WhereClause( naklab_LogicalOperator.Enumeration.LOGICAL_OPERATOR_AND ).add( Schema.User.Id , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , 'ID' ) )
            .setOrderClause( new naklab_OrderClause().add( Schema.User.Id ) )
            .setLimitClause( new naklab_LimitClause( 200 ) )
            .setOffsetClause( new naklab_OffsetClause( 200 ) );
        // Test
        Test.startTest();
        String result = builder.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'SELECT Id FROM User USING SCOPE everything WHERE Id = ID ORDER BY Id ASC NULLS FIRST LIMIT 200 OFFSET 200' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void isLockTest(){
        // Test Setup
        naklab_QueryBuilder builder = new naklab_QueryBuilder().isLock()
            .setSelectClause( new naklab_SelectClause().add( Schema.User.Id ) )
            .setFromClause( new naklab_FromClause( Schema.User.SObjectType ) );
        // Test
        Test.startTest();
        String result = builder.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'SELECT Id FROM User FOR UPDATE' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void isUnLockTest(){
        // Test Setup
        naklab_QueryBuilder builder = new naklab_QueryBuilder().isUnLock()
            .setSelectClause( new naklab_SelectClause().add( Schema.User.Id ) )
            .setFromClause( new naklab_FromClause( Schema.User.SObjectType ) );
        // Test
        Test.startTest();
        String result = builder.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'SELECT Id FROM User' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void addSelectFieldTest(){
        // Test Setup
        naklab_QueryBuilder builder = new naklab_QueryBuilder()
            .setSelectClause( new naklab_SelectClause() )
            .addSelectField( Schema.User.Id )
            .addSelectField( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } )
            .setFromClause( new naklab_FromClause( Schema.User.SObjectType ) );
        // Test
        Test.startTest();
        String result = builder.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'SELECT Id , Profile.Id FROM User' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void addConditionTest(){
        // Test Setup
        naklab_QueryBuilder builder = new naklab_QueryBuilder()
            .setSelectClause( new naklab_SelectClause().add( Schema.User.Id ) )
            .setFromClause( new naklab_FromClause( Schema.User.SObjectType ) )
            .setWhereClause( new naklab_WhereClause( naklab_LogicalOperator.Enumeration.LOGICAL_OPERATOR_AND ) )
            .addCondition( Schema.User.Id , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , 'ID' )
            .addCondition( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , 'ID' )
            .addCondition( new naklab_WhereClause( naklab_LogicalOperator.Enumeration.LOGICAL_OPERATOR_AND ).add( Schema.User.Id , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , 'ID' ) );
        // Test
        Test.startTest();
        String result = builder.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'SELECT Id FROM User WHERE Id = ID AND Profile.Id = ID AND (Id = ID)' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void addOrderTest(){
        // Test Setup
        naklab_QueryBuilder builder = new naklab_QueryBuilder()
            .setSelectClause( new naklab_SelectClause().add( Schema.User.Id ) )
            .setFromClause( new naklab_FromClause( Schema.User.SObjectType ) )
            .setOrderClause( new naklab_OrderClause() )
            .addOrder( Schema.User.Id )
            .addOrder( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } )
            .addOrder( Schema.User.Id , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING )
            .addOrder( Schema.User.Id , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST )
            .addOrder( Schema.User.Id , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST )
            .addOrder( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST )
            .addOrder( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING )
            .addOrder( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
        // Test
        Test.startTest();
        String result = builder.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'SELECT Id FROM User ORDER BY Id ASC NULLS FIRST , Profile.Id ASC NULLS FIRST , Id ASC NULLS FIRST , Id ASC NULLS FIRST , Id ASC NULLS FIRST , Profile.Id ASC NULLS FIRST , Profile.Id ASC NULLS FIRST , Profile.Id ASC NULLS FIRST' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}