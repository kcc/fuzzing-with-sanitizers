




define i32 @bar(i32 %a) nounwind {
entry:
  %arr = alloca [400 x i32], align 16










  %arraydecay = getelementptr inbounds [400 x i32], [400 x i32]* %arr, i64 0, i64 0
  %call = call i32 @foo(i32 %a, i32* %arraydecay) nounwind
  ret i32 %call






}

declare i32 @foo(i32, i32*)

