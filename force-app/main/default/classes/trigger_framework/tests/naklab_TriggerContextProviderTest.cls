/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_TriggerContextProviderTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void newListTest(){
        // Test Setup
        naklab_TriggerContextProvider context = new naklab_TriggerContextProvider();
        // Test
        Test.startTest();
        List<SObject> newList = context.newList();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void oldListTest(){
        // Test Setup
        naklab_TriggerContextProvider context = new naklab_TriggerContextProvider();
        // Test
        Test.startTest();
        List<SObject> oldList = context.oldList();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void newMapTest(){
        // Test Setup
        naklab_TriggerContextProvider context = new naklab_TriggerContextProvider();
        // Test
        Test.startTest();
        Map<Id,SObject> newMap = context.newMap();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void oldMapTest(){
        // Test Setup
        naklab_TriggerContextProvider context = new naklab_TriggerContextProvider();
        // Test
        Test.startTest();
        Map<Id,SObject> oldMap = context.oldMap();
        Test.stopTest();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void operationTypeTest(){
        // Test Setup
        naklab_TriggerContextProvider context = new naklab_TriggerContextProvider();
        // Test
        Test.startTest();
        TriggerOperation opetation = context.operationType();
        Test.stopTest();
    }

}