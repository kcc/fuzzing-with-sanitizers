








define fastcc void @build_regex_nfa() nounwind uwtable ssp {
entry:
  indirectbr i8* blockaddress(@build_regex_nfa, %while.cond), [label %while.cond]

while.cond:                                       
  indirectbr i8* blockaddress(@build_regex_nfa, %sw.bb103), [label %do.body785, label %sw.bb103]

sw.bb103:                                         
  indirectbr i8* blockaddress(@build_regex_nfa, %while.cond112), [label %while.cond112]

while.cond112:                                    
  %pc.0 = phi i8 [ -1, %sw.bb103 ], [ 0, %for.body ], [ %pc.0, %for.cond.preheader ]
  indirectbr i8* blockaddress(@build_regex_nfa, %Lsetdone), [label %sw.bb118, label %Lsetdone]

sw.bb118:                                         
  indirectbr i8* blockaddress(@build_regex_nfa, %for.cond.preheader), [label %Lerror.loopexit, label %for.cond.preheader]

for.cond.preheader:                               
  indirectbr i8* blockaddress(@build_regex_nfa, %for.body), [label %while.cond112, label %for.body]

for.body:                                         
  indirectbr i8* blockaddress(@build_regex_nfa, %for.body), [label %while.cond112, label %for.body]

Lsetdone:                                         
  unreachable

do.body785:                                       
  ret void

Lerror.loopexit:                                  
  unreachable
}
