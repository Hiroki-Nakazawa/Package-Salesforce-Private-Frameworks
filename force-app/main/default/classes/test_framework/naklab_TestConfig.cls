/**
 * @author H.Nakazawa
 * @since  2025-09-15
 */
@isTest
public class naklab_TestConfig {
    
    //*********************************************************************************************
    //   Test Commnet Series
    //*********************************************************************************************

    // Assert Comment
    public static final String ASSERT_COMMENT = 'The result of the execution is not the expected value.';

    //*********************************************************************************************
    //   Test Useful Series
    //*********************************************************************************************
    
    // Test String
    public static final String TEST_STRING = 'TEST';
    // Cron String
    public static final String CRON_STRING = '0 0 * * * ?';
    // Datetime Format String
    public static final String DATETIME_FORMAT_STRING = 'yyyyMMddHHmmssSSS';
    // Key Format String
    public static final String KET_FORMAT_STRING = '{0}-{1}';

    //*********************************************************************************************
    //   Test Callout Series
    //*********************************************************************************************

    // URL String
    public static final String URL_STRING = 'https://www.salesforce.com/';
    // Callout Result String
    public static final String CALLOUT_RESULT_CONTINUE                      = 'Continue';
    public static final String CALLOUT_RESULT_SWITCHING_PROTOCOLS           = 'Switching Protocols';
    public static final String CALLOUT_RESULT_OK                            = 'OK';
    public static final String CALLOUT_RESULT_CREATED                       = 'Created';
    public static final String CALLOUT_RESULT_ACCEPTED                      = 'Accepted';
    public static final String CALLOUT_RESULT_NON_AUTHORITATIVE_INFORMATION = 'Non-Authoritative Information';
    public static final String CALLOUT_RESULT_NO_CONTENT                    = 'No Content';
    public static final String CALLOUT_RESULT_RESET_CONTENT                 = 'Reset Content';
    public static final String CALLOUT_RESULT_PARTIAL_CONTENT               = 'Partial Content';
    public static final String CALLOUT_RESULT_MULTIPLE_CHOICES              = 'Multiple Choices';
    public static final String CALLOUT_RESULT_MOVED_PERMANENTLY             = 'Moved Permanently';
    public static final String CALLOUT_RESULT_FOUND                         = 'Found';
    public static final String CALLOUT_RESULT_SEE_OTHER                     = 'See Other';
    public static final String CALLOUT_RESULT_NOT_MODIFIED                  = 'Not Modified';
    public static final String CALLOUT_RESULT_USE_PROXY                     = 'Use Proxy';
    public static final String CALLOUT_RESULT_BAD_REQUEST                   = 'Bad Request';
    public static final String CALLOUT_RESULT_UNAUTHORIZED                  = 'Unauthorized';
    public static final String CALLOUT_RESULT_PAYMENT_REQUIRED              = 'Payment Required';
    public static final String CALLOUT_RESULT_FORBIDDEN                     = 'Forbidden';
    public static final String CALLOUT_RESULT_NOT_FOUND                     = 'Not Found';
    public static final String CALLOUT_RESULT_METHOD_NOT_ALLOWED            = 'Method Not Allowed';
    public static final String CALLOUT_RESULT_NOT_ACCEPTABLE                = 'Not Acceptable';
    public static final String CALLOUT_RESULT_PROXY_AUTHENTICATION_REQUIRED = 'Proxy Authentication Required';
    public static final String CALLOUT_RESULT_REQUEST_TIME_OUT              = 'Request Time-out';
    public static final String CALLOUT_RESULT_CONFLICT                      = 'Conflict';
    public static final String CALLOUT_RESULT_GONE                          = 'Gone';
    public static final String CALLOUT_RESULT_LENGTH_REQUIRED               = 'Length Required';
    public static final String CALLOUT_RESULT_PRECONDITION_FAILED           = 'Precondition Failed';
    public static final String CALLOUT_RESULT_REQUEST_ENTITY_TOO_LARGE      = 'Request Entity Too Large';
    public static final String CALLOUT_RESULT_REQUEST_URI_TOO_LARGE         = 'Request-URI Too Large';
    public static final String CALLOUT_RESULT_UNSUPPORTED_MEDIA_TYPE        = 'Unsupported Media Type';
    public static final String CALLOUT_RESULT_INTERNAL_SERVER_ERROR         = 'Internal Server Error';
    public static final String CALLOUT_RESULT_NOT_IMPLEMENTED               = 'Not Implemented';
    public static final String CALLOUT_RESULT_BAD_GATEWAY                   = 'Bad Gateway';
    public static final String CALLOUT_RESULT_SERVICE_UNAVAILABLE           = 'Service Unavailable';
    public static final String CALLOUT_RESULT_GATEWAY_TIME_OUT              = 'Gateway Time-out';
    public static final String CALLOUT_RESULT_HTTP_VERSION_NOT_SUPPORTED    = 'HTTP Version not supported';

    //*********************************************************************************************
    //   Test Notification Series
    //*********************************************************************************************

    // Notification Name String
    public static final String NOTIFICATION_NAME_STRING = 'naklab_SampleNotification';
    // Page Ref String
    public static final String PAGEREF_STRING = '{ "type" : "standard__webPage" , "attributes" : { "url" : "https://www.salesforce.com/" } }';

}