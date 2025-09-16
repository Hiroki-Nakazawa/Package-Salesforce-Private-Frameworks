/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_TriggerHandlerTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void newListTest(){
        // Test Setup
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        // Test
        Test.startTest();
        List<SObject> newList = handler.newList();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void oldListTest(){
        // Test Setup
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        // Test
        Test.startTest();
        List<SObject> oldList = handler.oldList();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void newMapTest(){
        // Test Setup
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        // Test
        Test.startTest();
        Map<Id,SObject> newMap = handler.newMap();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void oldMapTest(){
        // Test Setup
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        // Test
        Test.startTest();
        Map<Id,SObject> oldMap = handler.oldMap();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void beforeInsertTest(){
        // Test Setup
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        naklab_TriggerHandler.context = new naklab_TestExtendedBInsContextProvider();
        // Test
        Test.startTest();
        handler.run();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void beforeUpdateTest(){
        // Test Setup
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        naklab_TriggerHandler.context = new naklab_TestExtendedBUpdContextProvider();
        // Test
        Test.startTest();
        handler.run();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void beforeDeleteTest(){
        // Test Setup
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        naklab_TriggerHandler.context = new naklab_TestExtendedBDelContextProvider();
        // Test
        Test.startTest();
        handler.run();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void afterInsertTest(){
        // Test Setup
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        naklab_TriggerHandler.context = new naklab_TestExtendedAInsContextProvider();
        // Test
        Test.startTest();
        handler.run();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void afterUpdateTest(){
        // Test Setup
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        naklab_TriggerHandler.context = new naklab_TestExtendedAUpdContextProvider();
        // Test
        Test.startTest();
        handler.run();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void afterDeleteTest(){
        // Test Setup
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        naklab_TriggerHandler.context = new naklab_TestExtendedADelContextProvider();
        // Test
        Test.startTest();
        handler.run();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void afterUndeleteTest(){
        // Test Setup
        naklab_TestExtendedTriggerHandler handler = new naklab_TestExtendedTriggerHandler();
        naklab_TriggerHandler.context = new naklab_TestExtendedAUndContextProvider();
        // Test
        Test.startTest();
        handler.run();
        Test.stopTest();
    }

}