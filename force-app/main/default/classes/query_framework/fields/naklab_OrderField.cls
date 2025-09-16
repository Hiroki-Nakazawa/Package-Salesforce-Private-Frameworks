/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public class naklab_OrderField extends naklab_QueryField {
    
    // Sort Direction
    private naklab_SortDirection.Enumeration direction;
    // Null Handling
    private naklab_NullHandling.Enumeration nullHandling;

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  field
     * @param  lookupFields
     * @param  direction
     * @param  nullHandling
     */
    public naklab_OrderField( Schema.SObjectField field , List<Schema.SObjectField> lookupFields , naklab_SortDirection.Enumeration direction , naklab_NullHandling.Enumeration nullHandling ){
        super( field , lookupFields );
        this.direction    = direction;
        this.nullHandling = nullHandling;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `String`
     */
    public override String build(){
        return super.build() + ' ' + naklab_SortDirection.SORT_DIRECTION_STRINGS.get( this.direction ) + ' ' + naklab_NullHandling.NULL_HANDLING_STRINGS.get( this.nullHandling );
    }

}