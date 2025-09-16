/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_CoreSchedulerTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedCoreScheduler scheduler = new naklab_TestExtendedCoreScheduler();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void scheduleTest(){
        // Test Setup
        naklab_TestExtendedCoreScheduler scheduler = new naklab_TestExtendedCoreScheduler();
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
    static void addErrorTest(){
        // Test Setup
        naklab_TestExtendedCoreScheduler scheduler = new naklab_TestExtendedCoreScheduler();
        // Test
        Test.startTest();
        scheduler.addError( naklab_TestConfig.TEST_STRING , naklab_TestConfig.TEST_STRING );
        Test.stopTest();
    }

}