/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_CoreChainableBatchProcessorTest {

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedChainBatchProcessor batch = new naklab_TestExtendedChainBatchProcessor();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void batchTest(){
        // Test Setup
        naklab_TestExtendedChainBatchProcessor batch = new naklab_TestExtendedChainBatchProcessor();
        // Test
        Test.startTest();
        Database.executeBatch( batch , batch.getBatchSize() );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void nextInvokeTest(){
        // Test Setup
        naklab_TestExtendedChainBatchProcessor batch = new naklab_TestExtendedChainBatchProcessor( true );
        // Test
        Test.startTest();
        batch.nextInvoke();
        Test.stopTest();
    }

}