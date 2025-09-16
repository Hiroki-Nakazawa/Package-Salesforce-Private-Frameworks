/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public abstract class naklab_DomainLayer {

    // SObject Type
    private Schema.SObjectType sObjectType;
    // Records
    private List<SObject> records;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  sObjectType
     * @param  records
     */
    public naklab_DomainLayer( Schema.SObjectType sObjectType , List<SObject> records ){
        this.sObjectType = sObjectType;
        this.records     = records;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `Schema.SObjectType`
     */
    public virtual Schema.SObjectType getSObjectType(){
        return this.sObjectType;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `List<SObject>`
     */
    public virtual List<SObject> getRecords(){
        return this.records;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-14
     * @return `Map<Id,SObject>`
     */
    public virtual Map<Id,SObject> getRecordMapById(){
        return new Map<Id,SObject>( this.records );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `Set<Id>`
     */
    public virtual Set<Id> getRecordIds(){
        return this.getRecordMapById().keySet();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `Boolean`
     */
    public virtual Boolean isEmpty(){
        return this.records.isEmpty();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `Integer`
     */
    public virtual Integer size(){
        return this.records.size();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-14
     * @param  record
     */
    public virtual void add( SObject record ){
        this.records.add( record );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public virtual void throwException(){
        throw new DomainLayerException();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  message
     */
    public virtual void throwException( String message ){
        throw new DomainLayerException( message );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  exc
     */
    public virtual void throwException( Exception exc ){
        throw new DomainLayerException( exc );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  message
     * @param  exc
     */
    public virtual void throwException( String message , Exception exc ){
        throw new DomainLayerException( message , exc );
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public virtual class DomainLayerException extends Exception {}

}