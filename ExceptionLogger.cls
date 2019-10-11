public class ExceptionLogger {
    public static void logException(String projectname, String className, String message, Exception ex){
        ADM_Error_Log__c errorLogObj = new ADM_Error_Log__c();
        errorLogObj.Source__c = projectname;
        errorLogObj.Message__c = message;
        errorLogObj.StackTrace__c = ex.getStackTraceString();
        errorLogObj.Detail__c = ex.getMessage();
        errorLogObj.Level__c = 'Error';
        errorLogObj.Apex_Class__c = className;
        insert errorLogObj;
    }
}