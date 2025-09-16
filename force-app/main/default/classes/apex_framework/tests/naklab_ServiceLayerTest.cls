/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_ServiceLayerTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedServiceLayer service = new naklab_TestExtendedServiceLayer();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void simpleThrowExceptionTest(){
        // Test Setup
        naklab_TestExtendedServiceLayer service = new naklab_TestExtendedServiceLayer();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            service.throwException();
        } catch ( naklab_ServiceLayer.ServiceLayerException e ) {
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
        naklab_TestExtendedServiceLayer service = new naklab_TestExtendedServiceLayer();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            service.throwException( naklab_TestConfig.TEST_STRING );
        } catch ( naklab_ServiceLayer.ServiceLayerException e ) {
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
        naklab_TestExtendedServiceLayer service = new naklab_TestExtendedServiceLayer();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            service.throwException( new naklab_ServiceLayer.ServiceLayerException() );
        } catch ( naklab_ServiceLayer.ServiceLayerException e ) {
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
        naklab_TestExtendedServiceLayer service = new naklab_TestExtendedServiceLayer();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            service.throwException( naklab_TestConfig.TEST_STRING , new naklab_ServiceLayer.ServiceLayerException() );
        } catch ( naklab_ServiceLayer.ServiceLayerException e ) {
            isCatched = true;
        }
        Test.stopTest();
        // Assert
        Assert.isTrue( isCatched , naklab_TestConfig.ASSERT_COMMENT );
    }

}