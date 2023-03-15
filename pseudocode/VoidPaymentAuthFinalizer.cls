public class VoidPaymentAuthFinalizer implements Finalizer{
    String accessToken;
    String correlationId;
    LB2BCreditCardReversalWrapper authReversalWrapper;

    public VoidPaymentAuthFinalizer(String accessToken, String correlationId, LB2BCreditCardReversalWrapper authReversalWrapper) {
        1. Set all passed in variables to instance variables.
    }

    public execute(FinalizerContext ctx){
        1. Call ctx.getResult() and check if the value is System.ParentJobResult.UNHANDLED_EXCEPTION. If it is, continue, else, do nothing.
        2. Create a SBUX__LogRecording__c record, with the "Payment Hub Void Failure" record type.
        3. Populate the SBUX__LogRecording__c record with all relevant information, which is all of the instance variables.
        4. Insert SBUX__LogRecording__c record.
        4. Send email to crmb2b@starbucks.com with a link to the SBUX__LogRecording__c record that was just created.
    }
}
