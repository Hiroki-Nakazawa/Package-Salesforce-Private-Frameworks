/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public virtual class naklab_TriggerContextProvider {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `List<SObject>`
     */
    public virtual List<SObject> newList(){ return Trigger.new; }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `List<SObject>`
     */
    public virtual List<SObject> oldList(){ return Trigger.old; }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `Map<Id,SObject>`
     */
    public virtual Map<Id,SObject> newMap(){ return Trigger.newMap; }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `Map<Id,SObject>`
     */
    public virtual Map<Id,SObject> oldMap(){ return Trigger.oldMap; }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `TriggerOperation`
     */
    public virtual TriggerOperation operationType(){ return Trigger.operationType; }

}