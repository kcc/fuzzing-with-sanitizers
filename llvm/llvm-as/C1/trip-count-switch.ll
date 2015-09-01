

declare void @foo()

define void @test1() nounwind {
entry:
  br label %for.cond

for.cond:                                         
  %i.0 = phi i32 [ 2, %entry ], [ %dec, %if.end ]
  switch i32 %i.0, label %if.end [
    i32 0, label %for.end
    i32 1, label %if.then
  ]

if.then:                                          
  tail call void @foo()
  br label %if.end

if.end:                                           
  %dec = add nsw i32 %i.0, -1
  br label %for.cond

for.end:                                          
  ret void




}
