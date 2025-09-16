/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public abstract class naklab_TriggerHandler {
    
    // Trigger Context Provider
    @TestVisible
    public static naklab_TriggerContextProvider context { get; private set; }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    static { context = new naklab_TriggerContextProvider(); }

    // Context Records
    protected List<SObject>   newList { get { return newList == null ? newList = context.newList() : newList; } private set; }
    protected List<SObject>   oldList { get { return oldList == null ? oldList = context.oldList() : oldList; } private set; }
    protected Map<Id,SObject> newMap  { get { return newMap  == null ? newMap  = context.newMap()  : newMap;  } private set; }
    protected Map<Id,SObject> oldMap  { get { return oldMap  == null ? oldMap  = context.oldMap()  : oldMap;  } private set; }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public void run(){
        switch on context.operationType() {
            when BEFORE_INSERT  { this.beforeInsert();  }
            when BEFORE_UPDATE  { this.beforeUpdate();  }
            when BEFORE_DELETE  { this.beforeDelete();  }
            when AFTER_INSERT   { this.afterInsert();   }
            when AFTER_UPDATE   { this.afterUpdate();   }
            when AFTER_DELETE   { this.afterDelete();   }
            when AFTER_UNDELETE { this.afterUndelete(); }
        }
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    protected virtual void beforeInsert(){}
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    protected virtual void beforeUpdate(){}
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    protected virtual void beforeDelete(){}
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    protected virtual void afterInsert(){}
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    protected virtual void afterUpdate(){}
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    protected virtual void afterDelete(){}
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    protected virtual void afterUndelete(){}

}