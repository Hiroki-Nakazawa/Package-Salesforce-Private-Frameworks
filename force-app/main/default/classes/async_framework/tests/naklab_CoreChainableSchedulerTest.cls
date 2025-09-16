/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_CoreChainableSchedulerTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedChainScheduler scheduler = new naklab_TestExtendedChainScheduler();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void scheduleTest(){
        // Test Setup
        naklab_TestExtendedChainScheduler scheduler = new naklab_TestExtendedChainScheduler();
        // Test
        Test.startTest();
        System.schedule( naklab_TestConfig.TEST_STRING , naklab_TestConfig.CRON_STRING , scheduler );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void nextInvokeTest(){
        // Test Setup
        naklab_TestExtendedChainScheduler scheduler = new naklab_TestExtendedChainScheduler( true );
        // Test
        Test.startTest();
        scheduler.nextInvoke();
        Test.stopTest();
    }

}