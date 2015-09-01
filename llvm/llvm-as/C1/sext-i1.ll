




define i32 @t1(i32 %x) nounwind readnone ssp {
entry:







  %0 = icmp eq i32 %x, 0
  %iftmp.0.0 = select i1 %0, i32 -1, i32 0
  ret i32 %iftmp.0.0
}

define i32 @t2(i32 %x) nounwind readnone ssp {
entry:







  %0 = icmp eq i32 %x, 0
  %iftmp.0.0 = sext i1 %0 to i32
  ret i32 %iftmp.0.0
}

%struct.zbookmark = type { i64, i64 }
%struct.zstream = type { }

define i32 @t3() nounwind readonly {
entry:











  %not.tobool = icmp eq i32 undef, 0              
  %cond = sext i1 %not.tobool to i32              
  %conv = sext i1 %not.tobool to i64              
  %add13 = add i64 0, %conv                       
  %cmp = icmp ult i64 undef, %add13               
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  br label %if.end

if.end:                                           
  %xor27 = xor i32 undef, %cond                   
  ret i32 0
}

define i32 @t4(i64 %x) nounwind readnone ssp {
entry:










  %0 = icmp eq i64 %x, 0
  %1 = sext i1 %0 to i32
  ret i32 %1
}

define i64 @t5(i32 %x) nounwind readnone ssp {
entry:








  %0 = icmp eq i32 %x, 0
  %1 = sext i1 %0 to i64
  ret i64 %1
}

