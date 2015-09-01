

define void @t() nounwind ssp {

entry:
  br i1 undef, label %return, label %if.end.i

if.end.i:                                         
  %tmp7.i = load i32, i32* undef, align 4
  br i1 undef, label %return, label %if.end

if.end:                                           





  %tmp138 = select i1 undef, i32 0, i32 %tmp7.i
  %tmp867 = zext i32 %tmp138 to i64
  br label %while.cond

while.cond:                                       
  %tmp869 = sub i64 %tmp867, 0
  %scale2.0 = trunc i64 %tmp869 to i32
  %cmp149 = icmp eq i32 %scale2.0, 0
  br i1 %cmp149, label %while.end, label %land.rhs

land.rhs:                                         
  br i1 undef, label %while.body, label %while.end

while.body:                                       
  br label %while.cond

while.end:                                        
  br i1 undef, label %cond.false205, label %cond.true190

cond.true190:                                     
  br i1 undef, label %cond.false242, label %cond.true225

cond.false205:                                    
  unreachable

cond.true225:                                     
  br i1 undef, label %cond.false280, label %cond.true271

cond.false242:                                    
  unreachable

cond.true271:                                     
  unreachable

cond.false280:                                    
  unreachable

return:                                           
  ret void
}
