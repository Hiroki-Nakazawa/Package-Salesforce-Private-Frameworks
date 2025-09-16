/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public abstract class naklab_CoreController {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public virtual void throwException(){
        throw new CoreControllerException();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  message
     */
    public virtual void throwException( String message ){
        throw new CoreControllerException( message );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  exc
     */
    public virtual void throwException( Exception exc ){
        throw new CoreControllerException( exc );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  message
     * @param  exc
     */
    public virtual void throwException( String message , Exception exc ){
        throw new CoreControllerException( message , exc );
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public virtual class CoreControllerException extends Exception {}

}