/**
 * @author H.Nakazawa
 * @since  2025-09-16
 */
public class naklab_InsertDML extends naklab_BaseDML {
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  records
     */
    public naklab_InsertDML( List<SObject> records ){
        super( records );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  allOrNone
     */
    public void executeDML( Boolean allOrNone ){
        this.setDmlResults( Database.insert( this.getRecords() , allOrNone ) );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `Map<Id,Boolean>`
     */
    public Map<Id,Boolean> getSuccessById(){
        Map<Id,Boolean> successById = new Map<Id,Boolean>();
        for( Database.SaveResult result : (List<Database.SaveResult>)this.getDmlResults() ){
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
        for( Database.SaveResult result : (List<Database.SaveResult>)this.getDmlResults() ){
            errorsById.put( result.getId() , result.getErrors() );
        }
        return errorsById;
    }

}