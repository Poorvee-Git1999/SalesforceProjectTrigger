public class MaxOpportunityOnAccount {
    public static void MaxOpportunityOnAccountMethod(List<Opportunity> newOppList)
    {
      system.debug('inside the method');
 
       Set<Id> parentId = new Set<Id>();
       for(Opportunity objOpp : newOppList )
       {
          if(objOpp.AccountId != null)
          {
          parentId.add(objOpp.AccountId);
          system.debug('parentid is' +parentId);

       }
       }
       List<Account> lst = new List<Account>();
       List<Opportunity> lstOpp = new List<Opportunity>([Select id,Name,AccountId from Opportunity where AccountId IN :parentId]);
       system.debug('lstOpp is' +lstOpp);

        for(Opportunity opp :lstOpp)
      {
          Account acc= new Account();
          acc.id=opp.AccountId;
          acc.Max_Opportunity__c=opp.Name;
          lst.add(acc);
          system.debug('lst is' +lst);

      }
    
    Update lst;
    }
}