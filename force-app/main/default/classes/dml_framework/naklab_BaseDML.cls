/**
 * @author H.Nakazawa
 * @since  2025-09-16
 */
public abstract class naklab_BaseDML {

    // SObject List
    private List<SObject> records;
    // DML Results
    private List<Object> dmlResults;
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  records
     */
    public naklab_BaseDML( List<SObject> records ){
        this.records = records;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `List<SObject>`
     */
    public virtual List<SObject> getRecords(){
        return this.records;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  records
     */
    public virtual void setRecords( List<SObject> records ){
        this.records = records;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `List<Object>`
     */
    public virtual List<Object> getDmlResults(){
        return this.dmlResults;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  dmlResults
     */
    public virtual void setDmlResults( List<Object> dmlResults ){
        this.dmlResults = dmlResults;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  allOrNone
     */
    abstract void executeDML( Boolean allOrNone );

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `Map<Id,Boolean>`
     */
    abstract Map<Id,Boolean> getSuccessById();
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `Map<Id,List<Database.Error>>`
     */
    abstract Map<Id,List<Database.Error>> getErrorsById();

}