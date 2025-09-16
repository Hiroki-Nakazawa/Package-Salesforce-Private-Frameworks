/**
 * @author H.Nakazawa
 * @since  2025-09-16
 */
@isTest
public class naklab_TestExtendedAUndContextProvider extends naklab_TriggerContextProvider {

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `TriggerOperation`
     */
    public override TriggerOperation operationType(){ return TriggerOperation.AFTER_UNDELETE; }

}