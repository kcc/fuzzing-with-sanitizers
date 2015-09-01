

target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

%struct.test = type { i64, [8 x i8] }
%struct.pad = type { [8 x i64] }

@gt = common global %struct.test zeroinitializer, align 16
@gp = common global %struct.pad zeroinitializer, align 8

define signext i32 @callee1(i32 signext %x, %struct.test* byval align 16 nocapture readnone %y, i32 signext %z) {
entry:
  ret i32 %z
}




declare signext i32 @test1(i32 signext, %struct.test* byval align 16, i32 signext)
define void @caller1(i32 signext %z) {
entry:
  %call = tail call signext i32 @test1(i32 signext 0, %struct.test* byval align 16 @gt, i32 signext %z)
  ret void
}





define i64 @callee2(%struct.pad* byval nocapture readnone %x, i32 signext %y, %struct.test* byval align 16 nocapture readonly %z) {
entry:
  %x1 = getelementptr inbounds %struct.test, %struct.test* %z, i64 0, i32 0
  %0 = load i64, i64* %x1, align 16
  ret i64 %0
}





declare i64 @test2(%struct.pad* byval, i32 signext, %struct.test* byval align 16)
define void @caller2(i64 %z) {
entry:
  %tmp = alloca %struct.test, align 16
  %.compoundliteral.sroa.0.0..sroa_idx = getelementptr inbounds %struct.test, %struct.test* %tmp, i64 0, i32 0
  store i64 %z, i64* %.compoundliteral.sroa.0.0..sroa_idx, align 16
  %call = call i64 @test2(%struct.pad* byval @gp, i32 signext 0, %struct.test* byval align 16 %tmp)
  ret void
}








