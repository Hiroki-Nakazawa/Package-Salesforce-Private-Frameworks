/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_WhereField extends naklab_QueryField {
    
    // Comparison Operator
    private naklab_ComparisonOperator.Enumeration comparison;
    // Value
    private String value;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @param  comparison
     * @param  value
     */
    public naklab_WhereField( Schema.SObjectField field , List<Schema.SObjectField> lookupFields , naklab_ComparisonOperator.Enumeration comparison , String value ){
        super( field , lookupFields );
        this.comparison = comparison;
        this.value      = value;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public override String build(){
        return super.build() + ' ' + naklab_ComparisonOperator.COMPARISON_OPERATOR_STRINGS.get( this.comparison ) + ' ' + this.value;
    }

}