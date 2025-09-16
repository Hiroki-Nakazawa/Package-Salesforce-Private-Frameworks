/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public abstract class naklab_CoreQueueProcessor implements Queueable {

    // Job Error List
    private List<JobError> jobErrors = new List<JobError>();
    
    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public naklab_CoreQueueProcessor(){}

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  context
     */
    public abstract void execute( System.QueueableContext context );

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  jobId
     * @param  message
     */
    public void addError( String jobId , String message ){
        this.jobErrors.add( new JobError( jobId , message ) );
    }

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    private virtual class JobError {
        
        // Error Job Id
        public String jobId;
        // Error Message
        public String message;

        /**
         * @author H.Nakazawa
         * @since  2025-02-08
         * @param  jobId
         * @param  message
         */
        public JobError( String jobId , String message ) {
            this.jobId   = jobId;
            this.message = message;
        }

    }

}