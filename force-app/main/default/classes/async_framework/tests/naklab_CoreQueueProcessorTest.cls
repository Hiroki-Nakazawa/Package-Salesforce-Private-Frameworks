/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_CoreQueueProcessorTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedCoreQueueProcessor queue = new naklab_TestExtendedCoreQueueProcessor();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void queueTest(){
        // Test Setup
        naklab_TestExtendedCoreQueueProcessor queue = new naklab_TestExtendedCoreQueueProcessor();
        // Test
        Test.startTest();
        System.enqueueJob( queue );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void addErrorTest(){
        // Test Setup
        naklab_TestExtendedCoreQueueProcessor queue = new naklab_TestExtendedCoreQueueProcessor();
        // Test
        Test.startTest();
        queue.addError( naklab_TestConfig.TEST_STRING , naklab_TestConfig.TEST_STRING );
        Test.stopTest();
    }

}