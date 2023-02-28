@IsTest
private class TestArrayExample {
    @IsTest
    static void validateArrayExample() {

        Test.startTest();
        ArrayExample arrExample = new ArrayExample();

        Account b = new Account(Name='Test Class', VS_Updated__c=true);
        
        insert b;

        

        try {
            arrExample.getAccounts();
        } catch (Exception e) {
            System.debug('Exception '+ e.getMessage());
        }
        

        Test.stopTest();    

        Account C = [SELECT Name,VS_Updated__c FROM Account WHERE Id =:b.Id];

        System.debug('After Test : ' + C.VS_Updated__c);

        System.assertEquals(true, C.VS_Updated__c);

     }
}