/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
private class naklab_SelectorLayerTest {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void instanceTest(){
        // Test
        Test.startTest();
        naklab_TestExtendedSelectorLayer selector = new naklab_TestExtendedSelectorLayer();
        Test.stopTest();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void newQueryBuilderTest(){
        // Test Setup
        naklab_TestExtendedSelectorLayer selector = new naklab_TestExtendedSelectorLayer();
        // Test
        Test.startTest();
        naklab_QueryBuilder result = selector.newQueryBuilder();
        Test.stopTest();
        // Assert
        Assert.areEqual( 'SELECT Id FROM User' , result.build() , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void conciseQueryBuilderTest(){
        // Test Setup
        naklab_TestExtendedSelectorLayer selector = new naklab_TestExtendedSelectorLayer();
        // Test
        Test.startTest();
        naklab_QueryBuilder result = selector.conciseQueryBuilder().addSelectField( Schema.User.Id );
        Test.stopTest();
        // Assert
        Assert.areEqual( 'SELECT Id FROM User' , result.build() , naklab_TestConfig.ASSERT_COMMENT );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    @isTest
    static void simpleThrowExceptionTest(){
        // Test Setup
        naklab_TestExtendedSelectorLayer selector = new naklab_TestExtendedSelectorLayer();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            selector.throwException();
        } catch ( naklab_SelectorLayer.SelectorLayerException e ) {
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
        naklab_TestExtendedSelectorLayer selector = new naklab_TestExtendedSelectorLayer();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            selector.throwException( naklab_TestConfig.TEST_STRING );
        } catch ( naklab_SelectorLayer.SelectorLayerException e ) {
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
        naklab_TestExtendedSelectorLayer selector = new naklab_TestExtendedSelectorLayer();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            selector.throwException( new naklab_SelectorLayer.SelectorLayerException() );
        } catch ( naklab_SelectorLayer.SelectorLayerException e ) {
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
        naklab_TestExtendedSelectorLayer selector = new naklab_TestExtendedSelectorLayer();
        Boolean isCatched = false;
        // Test
        Test.startTest();
        try {
            selector.throwException( naklab_TestConfig.TEST_STRING , new naklab_SelectorLayer.SelectorLayerException() );
        } catch ( naklab_SelectorLayer.SelectorLayerException e ) {
            isCatched = true;
        }
        Test.stopTest();
        // Assert
        Assert.isTrue( isCatched , naklab_TestConfig.ASSERT_COMMENT );
    }

}