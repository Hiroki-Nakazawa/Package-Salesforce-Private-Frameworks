/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_OrderClause extends naklab_Clause {
    
    // Order Field List
    private List<naklab_OrderField> orderFields;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public naklab_OrderClause(){
        super( naklab_ClauseName.Enumeration.CLAUSE_NAME_ORDER );
        this.orderFields = new List<naklab_OrderField>();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public override String build(){
        // Confirm
        if( this.orderFields.isEmpty() ){ return ''; }
        // Return
        return super.getClause() + ' ' + this.buildContent();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public override String buildContent(){
        // Confirm
        if( this.orderFields.isEmpty() ){ return ''; }
        // Initialize List
        List<String> orders = new List<String>();
        // Order Fields
        for( naklab_OrderField orderField : this.orderFields ){
            orders.add( orderField.build() );
        }
        // Return
        return String.join( orders , ' , ' );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @return `naklab_OrderClause`
     */
    public naklab_OrderClause add( Schema.SObjectField field ){
        // Return
        return this.add( field , new List<Schema.SObjectField>() , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @return `naklab_OrderClause`
     */
    public naklab_OrderClause add( Schema.SObjectField field , List<Schema.SObjectField> lookupFields ){
        // Return
        return this.add( field , lookupFields , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  direction
     * @return `naklab_OrderClause`
     */
    public naklab_OrderClause add( Schema.SObjectField field , naklab_SortDirection.Enumeration direction ){
        // Return
        return this.add( field , new List<Schema.SObjectField>() , direction , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  nullsOrder
     * @return `naklab_OrderClause`
     */
    public naklab_OrderClause add( Schema.SObjectField field , naklab_NullHandling.Enumeration nullsOrder ){
        // Return
        return this.add( field , new List<Schema.SObjectField>() , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , nullsOrder );
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  direction
     * @param  nullsOrder
     * @return `naklab_OrderClause`
     */
    public naklab_OrderClause add( Schema.SObjectField field , naklab_SortDirection.Enumeration direction , naklab_NullHandling.Enumeration nullsOrder ){
        // Return
        return this.add( field , new List<Schema.SObjectField>() , direction , nullsOrder );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @param  nullsOrder
     * @return `naklab_OrderClause`
     */
    public naklab_OrderClause add( Schema.SObjectField field , List<Schema.SObjectField> lookupFields , naklab_NullHandling.Enumeration nullsOrder ){
        // Return
        return this.add( field , lookupFields , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , nullsOrder );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @param  direction
     * @return `naklab_OrderClause`
     */
    public naklab_OrderClause add( Schema.SObjectField field , List<Schema.SObjectField> lookupFields , naklab_SortDirection.Enumeration direction ){
        // Return
        return this.add( field , lookupFields , direction , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @param  direction
     * @param  nullsOrder
     * @return `naklab_OrderClause`
     */
    public naklab_OrderClause add( Schema.SObjectField field , List<Schema.SObjectField> lookupFields , naklab_SortDirection.Enumeration direction , naklab_NullHandling.Enumeration nullsOrder ){
        // Add Order Field
        this.orderFields.add( new naklab_OrderField( field , lookupFields , direction , nullsOrder ) );
        // Return
        return this;
    }

}