/**
 * @author H.Nakazawa
 * @since  2025-09-16
 */
@isTest
public class naklab_TestExtendedClause extends naklab_Clause {

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  clauseName
     */
    public naklab_TestExtendedClause( naklab_ClauseName.Enumeration clauseName ){
        super( clauseName );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `String`
     */
    public override String build(){
        // Return
        return super.getClause() + ' ' + this.buildContent();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `String`
     */
    public override String buildContent(){
        // Return
        return naklab_TestConfig.TEST_STRING;
    }

}