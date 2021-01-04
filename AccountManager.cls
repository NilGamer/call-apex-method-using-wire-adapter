public with sharing class AccountManager {
    
    @AuraEnabled(cacheable = true)
    public static List<Account> getAccount() {
        return [Select Id,Name,Phone from Account limit 10];
    }
}
