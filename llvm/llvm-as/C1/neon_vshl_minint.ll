


define <1 x i64> @vshl_minint() #0 {
  entry:
    
    
    
    %vshl.i = tail call <1 x i64> @llvm.arm.neon.vshiftu.v1i64(<1 x i64> undef, <1 x i64> <i64 -9223372036854775808>)
    ret <1 x i64> %vshl.i
}

declare <1 x i64> @llvm.arm.neon.vshiftu.v1i64(<1 x i64>, <1 x i64>)
