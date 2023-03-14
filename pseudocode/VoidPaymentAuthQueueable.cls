public class VoidPaymentAuthQueueable implements Queueable{

    String accessToken;
    String correlationId;
    LB2BCreditCardReversalWrapper authReversalWrapper;
    Integer retryCount;

    public VoidPaymentAuthQueueable(String accessToken, String correlationId, LB2BCreditCardReversalWrapper authReversalWrapper, Integer retryCount) {
        1. Set all passed in variables to instance variables.
    }
    
    public execute(QueueableContext ctx){
        1. Build request using LB2BPaymentHubCalloutUtil.buildAuthReversalRequest method.
        2. Send the request.
        3. If request was a success, nothing else occurs.
        4. If request failed, log it, and check is retryCount is greater than maxRetryCounts, which will be stored in metadata.
        5. If retryCount is less than maxRetryCounts, then schedule this class to be ran again, passing in all instance variables, 
           with retryCount incremented by one.
    }
}
