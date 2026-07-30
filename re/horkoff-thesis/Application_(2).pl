% Application_(2)  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <-- [implementPasswordSystem].
goals(soft) <--
  [ or([ attractUsers,
         usability,
         security ]) ].
