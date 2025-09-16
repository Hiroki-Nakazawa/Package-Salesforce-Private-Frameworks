/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public abstract class naklab_CoreChainableBatchProcessor extends naklab_CoreBatchProcessor implements naklab_Chainable {

    // Next Invoke
    private Boolean isNextInvoke;
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public naklab_CoreChainableBatchProcessor(){
        this( false );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  isNextInvoke
     */
    public naklab_CoreChainableBatchProcessor( Boolean isNextInvoke ){
        this.isNextInvoke = isNextInvoke;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `Integer`
     */
    public override abstract Integer getBatchSize();

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `List<naklab_Chainable>`
     */
    public abstract List<naklab_Chainable> getNextChainClass();

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public abstract void dispatch();

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public void nextInvoke(){
        // Next Invoke
        if( this.isNextInvoke && this.getNextChainClass() != null && !this.getNextChainClass().isEmpty() ){
            // Setup Next Job
            for( naklab_Chainable chainJob : this.getNextChainClass() ){
                chainJob.dispatch();
            }
        }
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  context
     * @return `Database.QueryLocator`
     */
    public override abstract Database.QueryLocator start( Database.BatchableContext context );

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  context
     * @param  records
     */
    public override abstract void execute( Database.BatchableContext context , List<SObject> records );

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  context
     */
    public override abstract void finish( Database.BatchableContext context );

}