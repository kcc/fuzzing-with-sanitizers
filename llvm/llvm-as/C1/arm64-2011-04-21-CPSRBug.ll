




define hidden void @t() nounwind {
entry:
  %cmp = icmp eq i32* null, undef
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* undef, align 1
  %tmp4 = load i8, i8* undef, align 1
  %tobool = trunc i8 %tmp4 to i1
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    
  unreachable

if.end:                                           
  br i1 undef, label %land.lhs.true14, label %if.end33

land.lhs.true14:                                  
  unreachable

if.end33:                                         
  unreachable
}
