/**
 * @author H.Nakazawa
 * @since  2025-09-16
 */
public class naklab_UpsertDML extends naklab_BaseDML {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  records
     */
    public naklab_UpsertDML( List<SObject> records ){
        super( records );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  allOrNone
     */
    public void executeDML( Boolean allOrNone ){
        this.setDmlResults( Database.upsert( this.getRecords() , allOrNone ) );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  field
     * @param  allOrNone
     */
    public void executeDML( Schema.SObjectField field , Boolean allOrNone ){
        this.setDmlResults( Database.upsert( this.getRecords() , field , allOrNone ) );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `Map<Id,Boolean>`
     */
    public Map<Id,Boolean> getSuccessById(){
        Map<Id,Boolean> successById = new Map<Id,Boolean>();
        for( Database.UpsertResult result : (List<Database.UpsertResult>)this.getDmlResults() ){
            successById.put( result.getId() , result.isSuccess() );
        }
        return successById;
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `Map<Id,List<Database.Error>>`
     */
    public Map<Id,List<Database.Error>> getErrorsById(){
        Map<Id,List<Database.Error>> errorsById = new Map<Id,List<Database.Error>>();
        for( Database.UpsertResult result : (List<Database.UpsertResult>)this.getDmlResults() ){
            errorsById.put( result.getId() , result.getErrors() );
        }
        return errorsById;
    }

}