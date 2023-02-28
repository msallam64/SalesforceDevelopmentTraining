trigger ApexTriggerExample on Account (after insert,after update) {

    List<Contact> con=new List<Contact>();


    //check if updated ,And field VS_Updated__c is = false ,will create Contact related to this Account
    if (Trigger.isUpdate) {
        for (Account acc : Trigger.old) {
            if (!acc.VS_Updated__c) {
                Contact c1=new Contact();
                c1.LastName='From Trigger';
                c1.AccountId=acc.Id;
                con.add(c1);  
            }
        }
    insert con;
    }

    //check if record is inserted will (excute ArrayExample Class)
    if (Trigger.isInsert) {
        ArrayExample x = new ArrayExample();
        x.getAccounts();
        
    }
    
    

}