% bCMS_SR_GovernmentAgency  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ followPolicies,
    followPolicies2,
    establishPoliciesForBothGroups ].
goals(soft) <--
  [ or([ provideFundingForTheSystem,
         improveCommunitiesLivingStandard,
         keepCommunitySafe,
         ensureMinimalCosts,
         ensureEffectiveResponseTimes ]) ].
funding <-- [provideFundingForPoliceDepartments].
funding2 <-- [provideFundingForFireDepartments].
policies <-- [establishPoliciesForBothGroups].
policies2 <-- [establishPoliciesForBothGroups].
provideFundingForFireDepartments <-- [followPolicies2].
provideFundingForPoliceDepartments <-- [followPolicies].
