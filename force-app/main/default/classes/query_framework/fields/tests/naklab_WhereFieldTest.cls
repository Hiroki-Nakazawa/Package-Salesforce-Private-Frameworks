/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_WhereFieldTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_WhereField field = new naklab_WhereField( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , 'ID' );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void buildTest(){
        // Test Setup
        naklab_WhereField field = new naklab_WhereField( Schema.Profile.Id , new List<Schema.SObjectField>{ Schema.User.ProfileId } , naklab_ComparisonOperator.Enumeration.COMPARISON_OPERATOR_EQUALS , 'ID' );
        // Test
        Test.startTest();
        String result = field.build();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'Profile.Id = ID' , result , naklab_TestConfig.ASSERT_COMMENT );
    }

}