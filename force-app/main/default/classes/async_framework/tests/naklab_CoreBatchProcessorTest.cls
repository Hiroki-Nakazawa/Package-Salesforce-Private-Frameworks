/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_CoreBatchProcessorTest {

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedCoreBatchProcessor batch = new naklab_TestExtendedCoreBatchProcessor();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void batchTest(){
        // Test Setup
        naklab_TestExtendedCoreBatchProcessor batch = new naklab_TestExtendedCoreBatchProcessor();
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
    static void addErrorTest(){
        // Test Setup
        naklab_TestExtendedCoreBatchProcessor batch = new naklab_TestExtendedCoreBatchProcessor();
        // Test
        Test.startTest();
        batch.addError( naklab_TestConfig.TEST_STRING , naklab_TestConfig.TEST_STRING );
        Test.stopTest();
    }

}