

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-apple-darwin10.0"

declare noalias i8* @malloc(i64) nounwind
declare void @free(i8*)


define i1 @test1() {
  %A = call noalias i8* @malloc(i64 4) nounwind
  %B = icmp eq i8* %A, null
  store i8 0, i8* %A

  call void @free(i8* %A)
  ret i1 %B



}


define noalias i8* @test2() nounwind {
entry:

  %A = call noalias i8* @malloc(i64 4) nounwind

  %tobool = icmp eq i8* %A, null

  br i1 %tobool, label %return, label %if.end

if.end:

  store i8 7, i8* %A
  br label %return

return:

  %retval.0 = phi i8* [ %A, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}
