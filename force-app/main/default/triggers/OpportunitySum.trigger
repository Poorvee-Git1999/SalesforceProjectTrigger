trigger OpportunitySum on Opportunity (After insert) {
 If(trigger.isAfter)
 {
      If(trigger.isInsert)
      {
       MaxOpportunityOnAccount.MaxOpportunityOnAccountMethod(trigger.new);
       system.debug('inside the trigger');
      }
 }
}