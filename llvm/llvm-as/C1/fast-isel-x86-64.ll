


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.0.0"



define i32 @test1(i32 %i) nounwind ssp {
  %and = and i32 8, %i
  ret i32 %and
}






define void @test2(i64 %x) nounwind ssp {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %tmp = load i64, i64* %x.addr, align 8
  %cmp = icmp sgt i64 %tmp, 42
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  br label %if.end

if.end:                                           
  ret void



}




@G = external global i32
define i64 @test3() nounwind {
  %A = ptrtoint i32* @G to i64
  ret i64 %A



}




@rtx_length = external global [153 x i8]

define i32 @test4(i64 %idxprom9) nounwind {
  %arrayidx10 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom9
  %tmp11 = load i8, i8* %arrayidx10, align 1
  %conv = zext i8 %tmp11 to i32
  ret i32 %conv





}



define void @test5(i32 %x, i32* %p) nounwind {
  %y = ashr i32 %x, 50000
  store i32 %y, i32* %p
  ret void





}


define i64 @test6(i64 %x) nounwind ssp {
entry:
  %mul = mul nsw i64 %x, 8
  ret i64 %mul



}

define i32 @test7(i32 %x) nounwind ssp {
entry:
  %mul = mul nsw i32 %x, 8
  ret i32 %mul


}



define i64 @test8(i64 %x) nounwind ssp {
entry:
  %add = add nsw i64 %x, 7
  ret i64 %add



}

define i64 @test9(i64 %x) nounwind ssp {
entry:
  %add = mul nsw i64 %x, 7
  ret i64 %add


}


define i32 @test10(i32 %X) nounwind {
  %Y = udiv i32 %X, 8
  ret i32 %Y


}

define i32 @test11(i32 %X) nounwind {
  %Y = sdiv exact i32 %X, 8
  ret i32 %Y


}



define void @test12(i8 %tmp) nounwind ssp noredzone {
entry:
  %tobool = trunc i8 %tmp to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          
  call void @test12(i8 0) noredzone
  br label %if.end

if.end:                                           
  ret void





}

declare void @test13f(i1 %X)

define void @test13() nounwind {
  call void @test13f(i1 0)
  ret void



}




define void @test14(i8 %tmp) nounwind ssp noredzone {
entry:
  %tobool = trunc i8 %tmp to i1
  call void @test13f(i1 zeroext %tobool) noredzone
  ret void



}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8*, i8*, i64, i32, i1)


define void @test15(i8* %a, i8* %b) nounwind {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %a, i8* %b, i64 4, i32 4, i1 false)
  ret void




}


declare void @test16callee(...) nounwind
define void @test16() nounwind {




  call void (...) @test16callee(i32 1)
  br label %block2

block2:







  call void (...) @test16callee(double 1.000000e+00)
  ret void
}


declare void @foo() unnamed_addr ssp align 2



define i32 @test17(i32 *%P) ssp nounwind {
entry:
  %tmp = load i32, i32* %P
  %cmp = icmp ne i32 %tmp, 5
  call void @foo()
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  ret i32 1

if.else:                                          
  ret i32 2





}


define void @test18(float* %p1) {
  store float 0.0, float* %p1
  ret void


}


define void @test19(double* %p1) {
  store double 0.0, double* %p1
  ret void


}


%struct.a = type { i64, i64, i64 }
define void @test20() nounwind ssp {
entry:
  %tmp = alloca %struct.a, align 8
  call void @test20sret(%struct.a* sret %tmp)
  ret void



}
declare void @test20sret(%struct.a* sret)


define void @test21(double* %p1) {
  store double -0.0, double* %p1
  ret void



}




define void @test22() nounwind {
entry:
  call void @foo22(i32 0)
  call void @foo22(i32 1)
  call void @foo22(i32 2)
  call void @foo22(i32 3)
  ret void









}

declare void @foo22(i32)


define void @test23(i8* noalias sret %result) {
  %a = alloca i8
  %b = call i8* @foo23()
  ret void




}

declare i8* @foo23()

declare void @takesi32ptr(i32* %arg)


define void @allocamaterialize() {
  %a = alloca i32

  call void @takesi32ptr(i32* %a)
  ret void
}
