/**
 * @author H.Nakazawa
 * @since  2025-09-16
 */
@isTest
private class naklab_BaseDMLTest {

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedBaseDML dml = new naklab_TestExtendedBaseDML( new List<SObject>() );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void getRecordsTest(){
        // Test Setup
        naklab_TestExtendedBaseDML dml = new naklab_TestExtendedBaseDML( new List<SObject>() );
        // Test
        Test.startTest();
        List<SObject> records = dml.getRecords();
        Test.stopTest();
        // Assert
        Assert.isTrue( records.isEmpty() , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void setRecordsTest(){
        // Test Setup
        naklab_TestExtendedBaseDML dml = new naklab_TestExtendedBaseDML( new List<SObject>() );
        // Test
        Test.startTest();
        dml.setRecords( new List<SObject>{ new User() } );
        Test.stopTest();
        // Assert
        Assert.areEqual( 1 , dml.getRecords().size() , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void getDmlResultsTest(){
        // Test Setup
        naklab_TestExtendedBaseDML dml = new naklab_TestExtendedBaseDML( new List<SObject>() );
        // Test
        Test.startTest();
        List<Object> results = dml.getDmlResults();
        Test.stopTest();
        // Assert
        Assert.isNull( results , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void setDmlResultsTest(){
        // Test Setup
        naklab_TestExtendedBaseDML dml = new naklab_TestExtendedBaseDML( new List<SObject>() );
        // Test
        Test.startTest();
        dml.setDmlResults( new List<Object>{ new User() } );
        Test.stopTest();
        // Assert
        Assert.areEqual( 1 , dml.getDmlResults().size() , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void executeDMLTest(){
        // Test Setup
        naklab_TestExtendedBaseDML dml = new naklab_TestExtendedBaseDML( new List<SObject>() );
        // Test
        Test.startTest();
        dml.executeDML( true );
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void getSuccessByIdTest(){
        // Test Setup
        naklab_TestExtendedBaseDML dml = new naklab_TestExtendedBaseDML( new List<SObject>() );
        // Test
        Test.startTest();
        Map<Id,Boolean> successById = dml.getSuccessById();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     */
    @isTest
    static void getErrorsByIdTest(){
        // Test Setup
        naklab_TestExtendedBaseDML dml = new naklab_TestExtendedBaseDML( new List<SObject>() );
        // Test
        Test.startTest();
        Map<Id,List<Database.Error>> errorsById = dml.getErrorsById();
        Test.stopTest();
    }

}