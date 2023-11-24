public class OpportunitySumHandler {
    public static void OpportunitySumHandlerMethod(List<Opportunity> newValue)
    
    {
      Set<Id> setOfAccIds = new Set<Id>();
       for(Opportunity oppObj:newValue)
       {
           if(oppObj.Amount!=Null)
           {
           setOfAccIds.add(oppObj.AccountId);
       }
       }
    }

}