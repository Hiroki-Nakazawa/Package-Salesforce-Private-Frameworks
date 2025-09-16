/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
public class naklab_TestExtendedCoreBatchProcessor extends naklab_CoreBatchProcessor {

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public naklab_TestExtendedCoreBatchProcessor(){}

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `Integer`
     */
    public override Integer getBatchSize(){
        return 200;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  context
     * @return `Database.QueryLocator`
     */
    public override Database.QueryLocator start( Database.BatchableContext context ){
        // Return
        return Database.getQueryLocator( 'SELECT Id FROM User' );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  context
     * @param  records
     */
    public override void execute( Database.BatchableContext context , List<SObject> records ){}

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  context
     */
    public override void finish( Database.BatchableContext context ){}

}