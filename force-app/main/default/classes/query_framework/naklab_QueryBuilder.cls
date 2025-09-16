/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_QueryBuilder {

    // Select Clause
    private naklab_SelectClause selectClause;
    // From Clause
    private naklab_FromClause fromClause;
    // Scope Clause
    private naklab_ScopeClause scopeClause;
    // Where Clause
    private naklab_WhereClause whereClause;
    // Order Clause
    private naklab_OrderClause orderClause;
    // Limit Clause
    private naklab_LimitClause limitClause;
    // Offset Clause
    private naklab_OffsetClause offsetClause;
    // Lock Data
    private Boolean isLock;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public naklab_QueryBuilder(){}

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  selectClause
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder setSelectClause( naklab_SelectClause selectClause ){
        // Set Select Clause
        this.selectClause = selectClause;
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  fromClause
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder setFromClause( naklab_FromClause fromClause ){
        // Set From Clause
        this.fromClause = fromClause;
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  scopeClause
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder setScopeClause( naklab_ScopeClause scopeClause ){
        // Set Scope Clause
        this.scopeClause = scopeClause;
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  whereClause
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder setWhereClause( naklab_WhereClause whereClause ){
        // Set Where Clause
        this.whereClause = whereClause;
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  orderClause
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder setOrderClause( naklab_OrderClause orderClause ){
        // Set Order Clause
        this.orderClause = orderClause;
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  limitClause
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder setLimitClause( naklab_LimitClause limitClause ){
        // Set Limit Clause
        this.limitClause = limitClause;
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  offsetClause
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder setOffsetClause( naklab_OffsetClause offsetClause ){
        // Set Offset Clause
        this.offsetClause = offsetClause;
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder isLock(){
        // Set Lock
        this.isLock = true;
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder isUnLock(){
        // Set Lock
        this.isLock = false;
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addSelectField( Schema.SObjectField field ){
        // Return
        return this.addSelectField( field , new List<Schema.SObjectField>() );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addSelectField( Schema.SObjectField field , List<Schema.SObjectField> lookupFields ){
        // Confirm Instance
        if( this.selectClause == null ){ throw new QueryBuilderException( 'The Select clause has not been instantiated.' ); }
        // Add Select Field
        this.selectClause.add( field , lookupFields );
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  comparison
     * @param  value
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addCondition( Schema.SObjectField field , naklab_ComparisonOperator.Enumeration comparison , String value ){
        // Return
        return this.addCondition( field , new List<Schema.SObjectField>() , comparison, value );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @param  comparison
     * @param  value
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addCondition( Schema.SObjectField field , List<Schema.SObjectField> lookupFields , naklab_ComparisonOperator.Enumeration comparison , String value ){
        // Confirm Instance
        if( this.whereClause == null ){ throw new QueryBuilderException( 'The Where clause has not been instantiated.' ); }
        // Add Where Field
        this.whereClause.add( field , lookupFields , comparison , value );
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  whereClause
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addCondition( naklab_WhereClause whereClause ){
        // Confirm Instance
        if( this.whereClause == null ){ throw new QueryBuilderException( 'The Where clause has not been instantiated.' ); }
        // Add Where Clause
        this.whereClause.add( whereClause );
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addOrder( Schema.SObjectField field ){
        // Return
        return this.addOrder( field , new List<Schema.SObjectField>() , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addOrder( Schema.SObjectField field , List<Schema.SObjectField> lookupFields ){
        // Return
        return this.addOrder( field , lookupFields , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  direction
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addOrder( Schema.SObjectField field , naklab_SortDirection.Enumeration direction ){
        // Return
        return this.addOrder( field , new List<Schema.SObjectField>() , direction , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  nullsOrder
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addOrder( Schema.SObjectField field , naklab_NullHandling.Enumeration nullsOrder ){
        // Return
        return this.addOrder( field , new List<Schema.SObjectField>() , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , nullsOrder );
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  direction
     * @param  nullsOrder
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addOrder( Schema.SObjectField field , naklab_SortDirection.Enumeration direction , naklab_NullHandling.Enumeration nullsOrder ){
        // Return
        return this.addOrder( field , new List<Schema.SObjectField>() , direction , nullsOrder );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @param  nullsOrder
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addOrder( Schema.SObjectField field , List<Schema.SObjectField> lookupFields , naklab_NullHandling.Enumeration nullsOrder ){
        // Return
        return this.addOrder( field , lookupFields , naklab_SortDirection.Enumeration.SORT_DIRECTION_ASCENDING , nullsOrder );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @param  direction
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addOrder( Schema.SObjectField field , List<Schema.SObjectField> lookupFields , naklab_SortDirection.Enumeration direction ){
        // Return
        return this.addOrder( field , lookupFields , direction , naklab_NullHandling.Enumeration.NULL_HANDLING_FIRST );
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @param  direction
     * @param  nullsOrder
     * @return `naklab_QueryBuilder`
     */
    public naklab_QueryBuilder addOrder( Schema.SObjectField field , List<Schema.SObjectField> lookupFields , naklab_SortDirection.Enumeration direction , naklab_NullHandling.Enumeration nullsOrder ){
        // Confirm Clause
        if( this.orderClause == null ){ throw new QueryBuilderException( 'The Order clause has not been instantiated.' ); }
        // Add Order Field
        this.orderClause.add( field , lookupFields , direction , nullsOrder );
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  accessLevel
     * @return `List<SObject>`
     */
    public List<SObject> query( System.AccessLevel accessLevel ){
        // Return
        return Database.query( this.build() , accessLevel );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  bindMap
     * @param  accessLevel
     * @return `List<SObject>`
     */
    public List<SObject> query( Map<String, Object> bindMap , System.AccessLevel accessLevel ){
        // Return
        return Database.queryWithBinds( this.build() , bindMap , accessLevel );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  accessLevel
     * @return `Database.QueryLocator`
     */
    public Database.QueryLocator queryLocator( System.AccessLevel accessLevel ){
        // Return
        return Database.getQueryLocator( this.build() , accessLevel );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  bindMap
     * @param  accessLevel
     * @return `Database.QueryLocator`
     */
    public Database.QueryLocator queryLocator( Map<String, Object> bindMap , System.AccessLevel accessLevel ){
        // Return
        return Database.getQueryLocatorWithBinds( this.build() , bindMap , accessLevel );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public String build(){
        // Initialize Clause List
        List<naklab_Clause> clauses = new List<naklab_Clause>();
        // Add Clauses
        if( this.selectClause != null ){ clauses.add( this.selectClause ); }
        if( this.fromClause   != null ){ clauses.add( this.fromClause   ); }
        if( this.scopeClause  != null ){ clauses.add( this.scopeClause  ); }
        if( this.whereClause  != null ){ clauses.add( this.whereClause  ); }
        if( this.orderClause  != null ){ clauses.add( this.orderClause  ); }
        if( this.limitClause  != null ){ clauses.add( this.limitClause  ); }
        if( this.offsetClause != null ){ clauses.add( this.offsetClause ); }
        // Build Clauses
        List<String> buildedClauses = this.buildClauses( clauses );
        // Confirm Lock
        if( this.isLock != null && this.isLock ){ buildedClauses.add( naklab_ClauseName.CLAUSE_NAME_STRINGS.get( naklab_ClauseName.Enumeration.CLAUSE_NAME_UPDATE ) ); }
        // Return
        return String.join( buildedClauses , ' ' );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  clauses
     * @return `List<String>`
     */
    private List<String> buildClauses( List<naklab_Clause> clauses ){
        // Initialize Builded Clause List
        List<String> buildedClauses = new List<String>();
        // Build Clauses
        for( naklab_Clause clause : clauses ){
            String buildedClause = clause.build();
            if( String.isNotBlank( buildedClause ) ){ buildedClauses.add( buildedClause ); }
        }
        // Return
        return buildedClauses;
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public class QueryBuilderException extends Exception {}

}