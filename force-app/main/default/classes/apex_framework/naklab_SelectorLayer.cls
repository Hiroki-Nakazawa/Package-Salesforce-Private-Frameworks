/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public abstract class naklab_SelectorLayer {

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public naklab_SelectorLayer(){}

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `Schema.SObjectType`
     */
    abstract Schema.SObjectType getSObjectType();

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `List<Schema.SObjectField>`
     */
    abstract List<Schema.SObjectField> getSObjectFields();

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `naklab_QueryBuilder`
     */
    @TestVisible
    protected naklab_QueryBuilder newQueryBuilder(){
        // Default Query Builder
        naklab_QueryBuilder builder = this.conciseQueryBuilder();
        // Set Select Field
        for( Schema.SObjectField field : this.getSObjectFields() ){
            builder.addSelectField( field );
        }
        // Return
        return builder;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `naklab_QueryBuilder`
     */
    @TestVisible
    protected naklab_QueryBuilder conciseQueryBuilder(){
        // Set From Clause
        naklab_FromClause fromClause = new naklab_FromClause( this.getSObjectType() );
        // Set Select Clause
        naklab_SelectClause selectClause = new naklab_SelectClause();
        // Return
        return new naklab_QueryBuilder().setSelectClause( selectClause ).setFromClause( fromClause );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public virtual void throwException(){
        throw new SelectorLayerException();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  message
     */
    public virtual void throwException( String message ){
        throw new SelectorLayerException( message );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  exc
     */
    public virtual void throwException( Exception exc ){
        throw new SelectorLayerException( exc );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  message
     * @param  exc
     */
    public virtual void throwException( String message , Exception exc ){
        throw new SelectorLayerException( message , exc );
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public virtual class SelectorLayerException extends Exception {}

}