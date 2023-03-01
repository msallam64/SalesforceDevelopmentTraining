@isTest
private class TriggerTest {
    @isTest
    static void validateInsertTrigger() {

        Account acct = new Account(Name='Test Account MAS');
        insert acct;

        Test.startTest();
        
        Test.stopTest();

        Account C = [SELECT Name,VS_Updated__c FROM Account WHERE Id =:acct.Id];

        System.debug('After Test : ' + C.VS_Updated__c);

        System.assertEquals(true, C.VS_Updated__c);
    }
    
}
