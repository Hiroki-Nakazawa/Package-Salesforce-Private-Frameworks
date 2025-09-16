/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public interface naklab_Chainable {
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `List<naklab_Chainable>`
     */
    List<naklab_Chainable> getNextChainClass();
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    void dispatch();

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    void nextInvoke();

}