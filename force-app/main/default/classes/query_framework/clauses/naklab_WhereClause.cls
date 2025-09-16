/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_WhereClause extends naklab_Clause {
    
    // Where Field List
    private List<naklab_WhereField> whereFields;
    // Where Clause List
    private List<naklab_WhereClause> whereClauses;
    // Logical Operator
    private naklab_LogicalOperator.Enumeration logical;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  logical
     */
    public naklab_WhereClause( naklab_LogicalOperator.Enumeration logical ){
        super( naklab_ClauseName.Enumeration.CLAUSE_NAME_WHERE );
        this.whereFields  = new List<naklab_WhereField>();
        this.whereClauses = new List<naklab_WhereClause>();
        this.logical      = logical;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public override String build(){
        // Confirm
        if( this.whereFields.isEmpty() && this.whereClauses.isEmpty() ){ return ''; }
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
        if( this.whereFields.isEmpty() && this.whereClauses.isEmpty() ){ return ''; }
        // Initialize List
        List<String> wheres = new List<String>();
        // Where Fields
        for( naklab_WhereField whereField : this.whereFields ){
            wheres.add( whereField.build() );
        }
        // Where Clauses
        for( naklab_WhereClause whereClause : this.whereClauses ){
            wheres.add( '(' + whereClause.buildContent() + ')' );
        }
        // Return
        return String.join( wheres , ' ' + naklab_LogicalOperator.LOGICAL_OPERATOR_STRINGS.get( this.logical ) + ' ' );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  comparison
     * @param  value
     * @return `naklab_WhereClause`
     */
    public naklab_WhereClause add( Schema.SObjectField field , naklab_ComparisonOperator.Enumeration comparison , String value ){
        // Return
        return this.add( field , new List<Schema.SObjectField>() , comparison, value );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @param  comparison
     * @param  value
     * @return `naklab_WhereClause`
     */
    public naklab_WhereClause add( Schema.SObjectField field , List<Schema.SObjectField> lookupFields , naklab_ComparisonOperator.Enumeration comparison , String value ){
        // Add Where Field
        this.whereFields.add( new naklab_WhereField( field , lookupFields , comparison , value ) );
        // Return
        return this;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  whereClause
     * @return `naklab_WhereClause`
     */
    public naklab_WhereClause add( naklab_WhereClause whereClause ){
        // Add Where Clause
        this.whereClauses.add( whereClause );
        // Return
        return this;
    }

}