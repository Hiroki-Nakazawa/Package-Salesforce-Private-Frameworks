/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_CoreChainableQueueProcessorTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedChainQueueProcessor queue = new naklab_TestExtendedChainQueueProcessor();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void queueTest(){
        // Test Setup
        naklab_TestExtendedChainQueueProcessor queue = new naklab_TestExtendedChainQueueProcessor();
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
    static void nextInvokeTest(){
        // Test Setup
        naklab_TestExtendedChainQueueProcessor queue = new naklab_TestExtendedChainQueueProcessor( true );
        // Test
        Test.startTest();
        queue.nextInvoke();
        Test.stopTest();
    }

}