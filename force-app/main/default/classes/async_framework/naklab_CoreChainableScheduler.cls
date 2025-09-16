/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public abstract class naklab_CoreChainableScheduler extends naklab_CoreScheduler implements naklab_Chainable {

    // Next Invoke
    private Boolean isNextInvoke;
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public naklab_CoreChainableScheduler(){
        this( false );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  isNextInvoke
     */
    public naklab_CoreChainableScheduler( Boolean isNextInvoke ){
        this.isNextInvoke = isNextInvoke;
    }

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
     */
    public override abstract void execute( System.SchedulableContext context );

}