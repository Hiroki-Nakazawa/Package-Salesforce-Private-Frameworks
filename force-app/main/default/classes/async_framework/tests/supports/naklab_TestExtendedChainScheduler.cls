/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
@isTest
public class naklab_TestExtendedChainScheduler extends naklab_CoreChainableScheduler {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public naklab_TestExtendedChainScheduler(){
        super();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  isNextInvoke
     */
    public naklab_TestExtendedChainScheduler( Boolean isNextInvoke ){
        super( isNextInvoke );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `List<naklab_Chainable>`
     */
    public override List<naklab_Chainable> getNextChainClass(){
        return new List<naklab_Chainable>{ new naklab_TestExtendedChainScheduler() };
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public override void dispatch(){}

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  context
     */
    public override void execute( System.SchedulableContext context ){}

}