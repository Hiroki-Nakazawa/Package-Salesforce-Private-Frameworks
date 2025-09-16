/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_CoreControllerTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedCoreController controller = new naklab_TestExtendedCoreController();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void simpleThrowExceptionTest(){
        // Test Setup
        naklab_TestExtendedCoreController controller = new naklab_TestExtendedCoreController();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            controller.throwException();
        } catch ( naklab_CoreController.CoreControllerException e ) {
            isCatched = true;
        }
        Test.stopTest();
        // Assert
        Assert.isTrue( isCatched , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void messageThrowExceptionTest(){
        // Test Setup
        naklab_TestExtendedCoreController controller = new naklab_TestExtendedCoreController();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            controller.throwException( naklab_TestConfig.TEST_STRING );
        } catch ( naklab_CoreController.CoreControllerException e ) {
            isCatched = true;
        }
        Test.stopTest();
        // Assert
        Assert.isTrue( isCatched , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void exceptionThrowExceptionTest(){
        // Test Setup
        naklab_TestExtendedCoreController controller = new naklab_TestExtendedCoreController();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            controller.throwException( new naklab_CoreController.CoreControllerException() );
        } catch ( naklab_CoreController.CoreControllerException e ) {
            isCatched = true;
        }
        Test.stopTest();
        // Assert
        Assert.isTrue( isCatched , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void fullThrowExceptionTest(){
        // Test Setup
        naklab_TestExtendedCoreController controller = new naklab_TestExtendedCoreController();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            controller.throwException( naklab_TestConfig.TEST_STRING , new naklab_CoreController.CoreControllerException() );
        } catch ( naklab_CoreController.CoreControllerException e ) {
            isCatched = true;
        }
        Test.stopTest();
        // Assert
        Assert.isTrue( isCatched , naklab_TestConfig.ASSERT_COMMENT );
    }

}