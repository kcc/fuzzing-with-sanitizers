

target datalayout = "e-m:o-p:32:32-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "thumbv7-apple-ios8.0.0"








%struct.RD_8x8DATA = type { i32, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], [3 x [16 x [16 x i32]]], [4 x i16], [4 x i8], [4 x i8], [4 x i8], [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i32]] }

@tr8x8 = external global %struct.RD_8x8DATA, align 4
@tr4x4 = external global %struct.RD_8x8DATA, align 4


declare void @foo(i16*, i16*) #0


define i32 @test() #1 {
bb:
  call void @foo(i16* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr8x8, i32 0, i32 10, i32 0, i32 0), i16* getelementptr inbounds (%struct.RD_8x8DATA, %struct.RD_8x8DATA* @tr4x4, i32 0, i32 10, i32 0, i32 0))
  unreachable
}

attributes #0 = { noreturn }
attributes #1 = { minsize }
