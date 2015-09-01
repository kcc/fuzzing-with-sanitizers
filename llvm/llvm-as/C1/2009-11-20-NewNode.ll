


define i64 @_strtoll_r(i16 %base) nounwind {
entry:
  br i1 undef, label %if.then, label %if.end27

if.then:                                          
  br label %if.end27

if.end27:                                         
  %cond66 = select i1 undef, i64 -9223372036854775808, i64 9223372036854775807 
  %conv69 = sext i16 %base to i64                 
  %div = udiv i64 %cond66, %conv69                
  br label %for.cond

for.cond:                                         
  br i1 undef, label %if.then152, label %if.then93

if.then93:                                        
  br i1 undef, label %if.end116, label %if.then152

if.end116:                                        
  %cmp123 = icmp ugt i64 undef, %div              
  %or.cond = or i1 undef, %cmp123                 
  br label %for.cond

if.then152:                                       
  br i1 undef, label %if.end182, label %if.then172

if.then172:                                       
  ret i64 %cond66

if.end182:                                        
  ret i64 %cond66
}
