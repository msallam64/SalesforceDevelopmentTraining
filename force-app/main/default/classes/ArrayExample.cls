public class ArrayExample{

    List<Account> accounts;
    List<Account> accountsListToUpdate;
    List<Contact> contact;

    //Constructor
    public ArrayExample(){
        this.accounts=[Select id,name,VS_Updated__c from Account];
        this.contact=[Select id,name from Contact];
        this.accountsListToUpdate = new List<Account>();

    }

    //get all accounts and add it to another list to make any operation (Update,delete,...)
    public void getAccounts(){
        for (Integer i = 0; i < accounts.size(); i++) {
        accountsListToUpdate.add(accounts[i]);
        }
        if (accountsListToUpdate.size()!=0) {
            updateAccounts(accountsListToUpdate);
        }
    }

    //Update specific field in accounts records
    public void updateAccounts(List<Account> Acc){
        for (Integer i = 0; i < Acc.size(); i++) {
            Acc[i].VS_Updated__c=true; 
            System.debug('Account '+i+'Name : '+Acc[i].VS_Updated__c+Acc[i].Id);            
        }
        update Acc;
    }

    // public void AddContact(){
    //     Contact con1= new Contact();
    //     con1.LastName='VS Test';
    //     con1.AccountId='0018d00000KSY8HAAX';
    //     insert con1;
    // }

    
}