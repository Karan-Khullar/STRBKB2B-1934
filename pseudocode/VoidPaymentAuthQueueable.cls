public class VoidPaymentAuthQueueable implements Queueable{

    String accessToken;
    String correlationId;
    LB2BCreditCardReversalWrapper authReversalWrapper;

    public VoidPaymentAuthQueueable(String accessToken, String correlationId, LB2BCreditCardReversalWrapper authReversalWrapper) {
        1. Set all passed in variables to instance variables.
    }
    
    public execute(QueueableContext ctx){
        1. Call System.attachFinalizer() method, passing in instance of VoidPaymentAuthFinalizer
        2. Call the LB2BPaymentHubCallout.authReversalCallout() method, passing in the correct instance variables
        4. If request was a success, nothing else occurs.
        5. If request failed, throw an Exception indicating that the void failed. This will allow the VoidPaymentAuthFinalizer to handle the callout failing.
    }
}
