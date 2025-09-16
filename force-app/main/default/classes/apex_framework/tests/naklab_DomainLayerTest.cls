/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_DomainLayerTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void getSObjectTypeTest(){
        // Test Setup
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        // Test
        Test.startTest();
        Schema.SObjectType result = domain.getSObjectType();
        Test.stopTest();
        // Assert
        Assert.areEqual( Schema.User.SObjectType , result , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void getRecordsTest(){
        // Test Setup
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        // Test
        Test.startTest();
        List<SObject> result = domain.getRecords();
        Test.stopTest();
        // Assert
        Assert.isTrue( result.isEmpty() , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-14
     */
    @isTest
    static void getRecordMapByIdTest(){
        // Test Setup
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        // Test
        Test.startTest();
        Map<Id,SObject> result = domain.getRecordMapById();
        Test.stopTest();
        // Assert
        Assert.isTrue( result.isEmpty() , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void getRecordIdsTest(){
        // Test Setup
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        // Test
        Test.startTest();
        Set<Id> result = domain.getRecordIds();
        Test.stopTest();
        // Assert
        Assert.isTrue( result.isEmpty() , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void isEmptyTest(){
        // Test Setup
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        // Test
        Test.startTest();
        Boolean result = domain.isEmpty();
        Test.stopTest();
        // Assert
        Assert.isTrue( result , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void sizeTest(){
        // Test Setup
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        // Test
        Test.startTest();
        Integer result = domain.size();
        Test.stopTest();
        // Assert
        Assert.areEqual( 0 , result , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-14
     */
    @isTest
    static void addTest(){
        // Test Setup
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        // Test
        Test.startTest();
        domain.add( new User() );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void simpleThrowExceptionTest(){
        // Test Setup
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            domain.throwException();
        } catch ( naklab_DomainLayer.DomainLayerException e ) {
            isCatched = true;
        }
        Test.stopTest();
        // Assert
        Assert.isTrue( isCatched , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void messageThrowExceptionTest(){
        // Test Setup
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            domain.throwException( naklab_TestConfig.TEST_STRING );
        } catch ( naklab_DomainLayer.DomainLayerException e ) {
            isCatched = true;
        }
        Test.stopTest();
        // Assert
        Assert.isTrue( isCatched , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void exceptionThrowExceptionTest(){
        // Test Setup
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            domain.throwException( new naklab_DomainLayer.DomainLayerException() );
        } catch ( naklab_DomainLayer.DomainLayerException e ) {
            isCatched = true;
        }
        Test.stopTest();
        // Assert
        Assert.isTrue( isCatched , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void fullThrowExceptionTest(){
        // Test Setup
        naklab_TestExtendedDomainLayer domain = new naklab_TestExtendedDomainLayer( Schema.User.SObjectType , new List<User>() );
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            domain.throwException( naklab_TestConfig.TEST_STRING , new naklab_DomainLayer.DomainLayerException() );
        } catch ( naklab_DomainLayer.DomainLayerException e ) {
            isCatched = true;
        }
        Test.stopTest();
        // Assert
        Assert.isTrue( isCatched , naklab_TestConfig.ASSERT_COMMENT );
    }

}