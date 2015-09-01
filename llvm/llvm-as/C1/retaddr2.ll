
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define i8* @test1() #0 {
entry:
  %0 = tail call i8* @llvm.returnaddress(i32 0)
  ret i8* %0
}










declare i8* @llvm.returnaddress(i32) #0

attributes #0 = { nounwind readnone }

