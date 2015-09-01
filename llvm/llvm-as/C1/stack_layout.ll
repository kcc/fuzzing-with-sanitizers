






target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare void @Use(i8*)





define void @Func1() sanitize_address {
entry:







  %XXX = alloca [10 x i8], align 1
  %YYY = alloca [20 x i8], align 1
  %ZZZ = alloca [30 x i8], align 1
  %arr1.ptr = bitcast [10 x i8]* %XXX to i8*
  store volatile i8 0, i8* %arr1.ptr
  %arr2.ptr = bitcast [20 x i8]* %YYY to i8*
  store volatile i8 0, i8* %arr2.ptr
  %arr3.ptr = bitcast [30 x i8]* %ZZZ to i8*
  store volatile i8 0, i8* %arr3.ptr
  ret void
}

define void @Func2() sanitize_address {
entry:







  %AAA = alloca [5 x i8], align 1
  %BBB = alloca [55 x i8], align 1
  %CCC = alloca [555 x i8], align 1
  %arr1.ptr = bitcast [5 x i8]* %AAA to i8*
  store volatile i8 0, i8* %arr1.ptr
  %arr2.ptr = bitcast [55 x i8]* %BBB to i8*
  store volatile i8 0, i8* %arr2.ptr
  %arr3.ptr = bitcast [555 x i8]* %CCC to i8*
  store volatile i8 0, i8* %arr3.ptr
  ret void
}


define void @Func3() sanitize_address {
entry:







  %AAA = alloca [128 x i8], align 16
  %BBB = alloca [128 x i8], align 64
  %CCC = alloca [128 x i8], align 256
  %arr1.ptr = bitcast [128 x i8]* %AAA to i8*
  store volatile i8 0, i8* %arr1.ptr
  %arr2.ptr = bitcast [128 x i8]* %BBB to i8*
  store volatile i8 0, i8* %arr2.ptr
  %arr3.ptr = bitcast [128 x i8]* %CCC to i8*
  store volatile i8 0, i8* %arr3.ptr
  ret void
}
