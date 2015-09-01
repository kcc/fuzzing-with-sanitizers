







declare i32 @foo()

define i32 @test1(i1 %cond, i32 %a) gc "statepoint-example" {
entry:
  br i1 %cond, label %branch1, label %branch2
  
branch1:
  %b = add i32 %a, 1
  br label %merge
 
branch2:
  br label %merge

merge:



  %phi = phi i32 [ %a, %branch2 ], [ %b, %branch1 ]
  %ret = call i32 @foo()
  ret i32 %ret
}


declare void @do_safepoint()
define void @gc.safepoint_poll() {

entry:
  call void @do_safepoint()
  ret void
}
