
define i32 @main() nounwind {
entry:
  br label %for.cond

test:
  br label %for.cond

for.cond:                                         
  br i1 true, label %for.body, label %for.end

for.body:                                         
  br label %for.inc

for.inc:                                          
  br label %for.cond

for.end:                                          
  ret i32 0
}
