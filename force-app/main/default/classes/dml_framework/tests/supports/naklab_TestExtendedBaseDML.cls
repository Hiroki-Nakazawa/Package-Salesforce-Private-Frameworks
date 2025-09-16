/**
 * @author H.Nakazawa
 * @since  2025-09-16
 */
@isTest
public class naklab_TestExtendedBaseDML extends naklab_BaseDML {

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  records
     */
    public naklab_TestExtendedBaseDML( List<SObject> records ){
        super( records );
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @param  allOrNone
     */
    public void executeDML( Boolean allOrNone ){}

    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `Map<Id,Boolean>`
     */
    public Map<Id,Boolean> getSuccessById(){
        return new Map<Id,Boolean>();
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-09-16
     * @return `Map<Id,List<Database.Error>>`
     */
    public Map<Id,List<Database.Error>> getErrorsById(){
        return new Map<Id,List<Database.Error>>();
    }

}