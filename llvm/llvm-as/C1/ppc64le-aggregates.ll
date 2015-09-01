








target datalayout = "e-m:e-i64:64-n32:64"
target triple = "powerpc64le-unknown-linux-gnu"





define [8 x float] @return_float([8 x float] %x) {
entry:
  ret [8 x float] %x
}




define [8 x double] @return_double([8 x double] %x) {
entry:
  ret [8 x double] %x
}




define [4 x ppc_fp128] @return_ppcf128([4 x ppc_fp128] %x) {
entry:
  ret [4 x ppc_fp128] %x
}




define [8 x <4 x i32>] @return_v4i32([8 x <4 x i32>] %x) {
entry:
  ret [8 x <4 x i32>] %x
}









define i64 @callee_float([7 x float] %a, [7 x float] %b, i64 %c) {
entry:
  ret i64 %c
}




define void @caller_float(i64 %x, [7 x float] %y) {
entry:
  tail call void @test_float([7 x float] %y, [7 x float] %y, i64 %x)
  ret void
}




declare void @test_float([7 x float], [7 x float], i64)

define i64 @callee_double(i64 %a, [7 x double] %b, i64 %c) {
entry:
  ret i64 %c
}




define void @caller_double(i64 %x, [7 x double] %y) {
entry:
  tail call void @test_double(i64 %x, [7 x double] %y, i64 %x)
  ret void
}




declare void @test_double(i64, [7 x double], i64)

define i64 @callee_ppcf128(i64 %a, [4 x ppc_fp128] %b, i64 %c) {
entry:
  ret i64 %c
}




define void @caller_ppcf128(i64 %x, [4 x ppc_fp128] %y) {
entry:
  tail call void @test_ppcf128(i64 %x, [4 x ppc_fp128] %y, i64 %x)
  ret void
}




declare void @test_ppcf128(i64, [4 x ppc_fp128], i64)

define i64 @callee_i64(i64 %a, [7 x i64] %b, i64 %c) {
entry:
  ret i64 %c
}




define void @caller_i64(i64 %x, [7 x i64] %y) {
entry:
  tail call void @test_i64(i64 %x, [7 x i64] %y, i64 %x)
  ret void
}




declare void @test_i64(i64, [7 x i64], i64)

define i64 @callee_i128(i64 %a, [4 x i128] %b, i64 %c) {
entry:
  ret i64 %c
}




define void @caller_i128(i64 %x, [4 x i128] %y) {
entry:
  tail call void @test_i128(i64 %x, [4 x i128] %y, i64 %x)
  ret void
}




declare void @test_i128(i64, [4 x i128], i64)

define i64 @callee_v4i32(i64 %a, [4 x <4 x i32>] %b, i64 %c) {
entry:
  ret i64 %c
}




define void @caller_v4i32(i64 %x, [4 x <4 x i32>] %y) {
entry:
  tail call void @test_v4i32(i64 %x, [4 x <4 x i32>] %y, i64 %x)
  ret void
}




declare void @test_v4i32(i64, [4 x <4 x i32>], i64)






%struct.float8 = type { [8 x float] }
%struct.float5 = type { [5 x float] }
%struct.float2 = type { [2 x float] }

@g8 = common global %struct.float8 zeroinitializer, align 4
@g5 = common global %struct.float5 zeroinitializer, align 4
@g2 = common global %struct.float2 zeroinitializer, align 4

define float @callee0([7 x float] %a, [7 x float] %b) {
entry:
  %b.extract = extractvalue [7 x float] %b, 6
  ret float %b.extract
}





define void @caller0([7 x float] %a) {
entry:
  tail call void @test0([7 x float] %a, [7 x float] %a)
  ret void
}











declare void @test0([7 x float], [7 x float])

define float @callee1([8 x float] %a, [8 x float] %b) {
entry:
  %b.extract = extractvalue [8 x float] %b, 7
  ret float %b.extract
}






define void @caller1([8 x float] %a) {
entry:
  tail call void @test1([8 x float] %a, [8 x float] %a)
  ret void
}




















declare void @test1([8 x float], [8 x float])

define float @callee2([8 x float] %a, [5 x float] %b, [2 x float] %c) {
entry:
  %c.extract = extractvalue [2 x float] %c, 1
  ret float %c.extract
}






define void @caller2() {
entry:
  %0 = load [8 x float], [8 x float]* getelementptr inbounds (%struct.float8, %struct.float8* @g8, i64 0, i32 0), align 4
  %1 = load [5 x float], [5 x float]* getelementptr inbounds (%struct.float5, %struct.float5* @g5, i64 0, i32 0), align 4
  %2 = load [2 x float], [2 x float]* getelementptr inbounds (%struct.float2, %struct.float2* @g2, i64 0, i32 0), align 4
  tail call void @test2([8 x float] %0, [5 x float] %1, [2 x float] %2)
  ret void
}























declare void @test2([8 x float], [5 x float], [2 x float])

define double @callee3([8 x float] %a, [5 x float] %b, double %c) {
entry:
  ret double %c
}





define void @caller3(double %d) {
entry:
  %0 = load [8 x float], [8 x float]* getelementptr inbounds (%struct.float8, %struct.float8* @g8, i64 0, i32 0), align 4
  %1 = load [5 x float], [5 x float]* getelementptr inbounds (%struct.float5, %struct.float5* @g5, i64 0, i32 0), align 4
  tail call void @test3([8 x float] %0, [5 x float] %1, double %d)
  ret void
}





declare void @test3([8 x float], [5 x float], double)

define float @callee4([8 x float] %a, [5 x float] %b, float %c) {
entry:
  ret float %c
}





define void @caller4(float %f) {
entry:
  %0 = load [8 x float], [8 x float]* getelementptr inbounds (%struct.float8, %struct.float8* @g8, i64 0, i32 0), align 4
  %1 = load [5 x float], [5 x float]* getelementptr inbounds (%struct.float5, %struct.float5* @g5, i64 0, i32 0), align 4
  tail call void @test4([8 x float] %0, [5 x float] %1, float %f)
  ret void
}





declare void @test4([8 x float], [5 x float], float)

