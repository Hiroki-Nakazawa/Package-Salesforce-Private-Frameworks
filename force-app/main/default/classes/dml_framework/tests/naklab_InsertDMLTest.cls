/**
 * @author H.Nakazawa
 * @since  2025-09-16
 */
@isTest
private class naklab_InsertDMLTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_InsertDML dml = new naklab_InsertDML( new List<SObject>() );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void executeDMLTest(){
        // Group Test Data Setup
        List<Group> groups = new List<Group>{
            new Group(
                Name          = naklab_TestConfig.TEST_STRING + ' ' + Datetime.now().format( naklab_TestConfig.DATETIME_FORMAT_STRING ) ,
                DeveloperName = naklab_TestConfig.TEST_STRING + '_' + Datetime.now().format( naklab_TestConfig.DATETIME_FORMAT_STRING ) ,
                Type          = 'Regular'
            )
        };
        // Test Setup
        naklab_InsertDML dml = new naklab_InsertDML( groups );
        // Test
        Test.startTest();
        dml.executeDML( false );
        Test.stopTest();
        // Assert
        Assert.areEqual( groups.size() , dml.getDmlResults().size() , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void getSuccessByIdTest(){
        // Group Test Data Setup
        List<Group> groups = new List<Group>{
            new Group(
                Name          = naklab_TestConfig.TEST_STRING + ' ' + Datetime.now().format( naklab_TestConfig.DATETIME_FORMAT_STRING ) ,
                DeveloperName = naklab_TestConfig.TEST_STRING + '_' + Datetime.now().format( naklab_TestConfig.DATETIME_FORMAT_STRING ) ,
                Type          = 'Regular'
            )
        };
        // Test Setup
        naklab_InsertDML dml = new naklab_InsertDML( groups );
        dml.executeDML( false );
        // Test
        Test.startTest();
        Map<Id,Boolean> resultById = dml.getSuccessById();
        Test.stopTest();
        // Assert
        Assert.areEqual( groups.size() , resultById.size() , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void getErrorsByIdTest(){
        // Group Test Data Setup
        List<Group> groups = new List<Group>{
            new Group(
                Name          = naklab_TestConfig.TEST_STRING + ' ' + Datetime.now().format( naklab_TestConfig.DATETIME_FORMAT_STRING ) ,
                DeveloperName = naklab_TestConfig.TEST_STRING + '_' + Datetime.now().format( naklab_TestConfig.DATETIME_FORMAT_STRING ) ,
                Type          = 'Regular'
            )
        };
        // Test Setup
        naklab_InsertDML dml = new naklab_InsertDML( groups );
        dml.executeDML( false );
        // Test
        Test.startTest();
        Map<Id,List<Database.Error>> resultsById = dml.getErrorsById();
        Test.stopTest();
        // Assert
        Assert.areEqual( groups.size() , resultsById.size() , naklab_TestConfig.ASSERT_COMMENT );
    }

}