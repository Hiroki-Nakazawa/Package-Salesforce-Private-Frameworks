/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public abstract class naklab_ServiceLayer {

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public virtual void throwException(){
        throw new ServiceLayerException();
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  message
     */
    public virtual void throwException( String message ){
        throw new ServiceLayerException( message );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  exc
     */
    public virtual void throwException( Exception exc ){
        throw new ServiceLayerException( exc );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  message
     * @param  exc
     */
    public virtual void throwException( String message , Exception exc ){
        throw new ServiceLayerException( message , exc );
    }
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public virtual class ServiceLayerException extends Exception {}

}