
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define zeroext i32 @test1() {
entry:
  %0 = tail call i32 @llvm.ppc.tbegin(i32 0)
  ret i32 %0






}

declare i32 @llvm.ppc.tbegin(i32) #1


define zeroext i32 @test2() {
entry:
  %0 = tail call i32 @llvm.ppc.tend(i32 0)
  ret i32 %0



}

declare i32 @llvm.ppc.tend(i32)


define void @test3() {
entry:
  %0 = tail call i32 @llvm.ppc.tabort(i32 0)
  %1 = tail call i32 @llvm.ppc.tabortdc(i32 0, i32 1, i32 2)
  %2 = tail call i32 @llvm.ppc.tabortdci(i32 0, i32 1, i32 2)
  %3 = tail call i32 @llvm.ppc.tabortwc(i32 0, i32 1, i32 2)
  %4 = tail call i32 @llvm.ppc.tabortwci(i32 0, i32 1, i32 2)
  ret void






}

declare i32 @llvm.ppc.tabort(i32)
declare i32 @llvm.ppc.tabortdc(i32, i32, i32)
declare i32 @llvm.ppc.tabortdci(i32, i32, i32)
declare i32 @llvm.ppc.tabortwc(i32, i32, i32)
declare i32 @llvm.ppc.tabortwci(i32, i32, i32)


define void @test4() {
entry:
  %0 = tail call i32 @llvm.ppc.tendall()
  %1 = tail call i32 @llvm.ppc.tresume()
  %2 = tail call i32 @llvm.ppc.tsuspend()
  ret void




}

declare i32 @llvm.ppc.tendall()
declare i32 @llvm.ppc.tresume()
declare i32 @llvm.ppc.tsuspend()


define void @test5(i64 %v) {
entry:
  tail call void @llvm.ppc.set.texasr(i64 %v)
  tail call void @llvm.ppc.set.texasru(i64 %v)
  tail call void @llvm.ppc.set.tfhar(i64 %v)
  tail call void @llvm.ppc.set.tfiar(i64 %v)
  ret void





}

define i64 @test6() {
entry:
  %0 = tail call i64 @llvm.ppc.get.texasr()
  ret i64 %0


}

define i64 @test7() {
entry:
  %0 = tail call i64 @llvm.ppc.get.texasru()
  ret i64 %0


}

define i64 @test8() {
entry:
  %0 = tail call i64 @llvm.ppc.get.tfhar()
  ret i64 %0


}

define i64 @test9() {
entry:
  %0 = tail call i64 @llvm.ppc.get.tfiar()
  ret i64 %0


}

declare void @llvm.ppc.set.texasr(i64)
declare void @llvm.ppc.set.texasru(i64)
declare void @llvm.ppc.set.tfhar(i64)
declare void @llvm.ppc.set.tfiar(i64)
declare i64 @llvm.ppc.get.texasr()
declare i64 @llvm.ppc.get.texasru()
declare i64 @llvm.ppc.get.tfhar()
declare i64 @llvm.ppc.get.tfiar()
