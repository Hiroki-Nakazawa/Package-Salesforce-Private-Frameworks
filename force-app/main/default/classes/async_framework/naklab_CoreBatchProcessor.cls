/**
 * @author H.Nakazawa
 * @since  2025-02-08
 */
public abstract class naklab_CoreBatchProcessor implements Database.Batchable<SObject> {

    // Job Error List
    private List<JobError> jobErrors = new List<JobError>();

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     */
    public naklab_CoreBatchProcessor(){}

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @return `Integer`
     */
    public abstract Integer getBatchSize();

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  context
     * @return `Database.QueryLocator`
     */
    public abstract Database.QueryLocator start( Database.BatchableContext context );

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  context
     * @param  records
     */
    public abstract void execute( Database.BatchableContext context , List<SObject> records );

    /**
     * @author H.Nakazawa
     * @since  2025-02-08
     * @param  context
     */
    public abstract void finish( Database.BatchableContext context );

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