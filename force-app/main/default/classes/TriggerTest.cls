@isTest(SeeAllData=true)
private class TriggerTest {
    static void validateTrigger() {

        Account acct = new Account(Name='Test Account MAS');
        insert acct;

        Test.startTest();

        // Account testAcc=[Select id,VS_Updated__c from Account WHERE id=: acct.get LIMIT 1];
        // testAcc.Name='MAS Test Trigger';
        // System.assertEquals(acct.VS_Updated__c,true);
            

        Test.stopTest();

    }
    
}
