@isTest
private class TriggerTest {
    @isTest
    static void validateInsertTrigger() {

        Account acct = new Account(Name='Test Account MAS');
        insert acct;

        Test.startTest();
        Test.stopTest();

        Account getAccountInserted = [SELECT Name,VS_Updated__c FROM Account WHERE Id =:acct.Id];
        System.assertEquals(true, getAccountInserted.VS_Updated__c);
    }
    
}
