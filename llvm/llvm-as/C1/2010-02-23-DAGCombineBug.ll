

define i32* @t() nounwind optsize ssp {
entry:



  %cmp = icmp slt i32 undef, 0                    
  %outsearch.0 = select i1 %cmp, i1 false, i1 true 
  br i1 %outsearch.0, label %if.then27, label %if.else29

if.then27:                                        
  ret i32* undef

if.else29:                                        
  unreachable
}

