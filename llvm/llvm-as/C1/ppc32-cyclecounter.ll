target datalayout = "E-m:e-p:32:32-i64:64-n32"
target triple = "powerpc"



define i64 @test1() nounwind {
entry:
  %r = call i64 @llvm.readcyclecounter()
  ret i64 %r
}








declare i64 @llvm.readcyclecounter()

