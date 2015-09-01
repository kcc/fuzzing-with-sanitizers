

define i64 @test_vaddlv_s32(<2 x i32> %a1) nounwind readnone {




entry:
  %vaddlv.i = tail call i64 @llvm.aarch64.neon.saddlv.i64.v2i32(<2 x i32> %a1) nounwind
  ret i64 %vaddlv.i
}

define i64 @test_vaddlv_u32(<2 x i32> %a1) nounwind readnone {




entry:
  %vaddlv.i = tail call i64 @llvm.aarch64.neon.uaddlv.i64.v2i32(<2 x i32> %a1) nounwind
  ret i64 %vaddlv.i
}

declare i64 @llvm.aarch64.neon.uaddlv.i64.v2i32(<2 x i32>) nounwind readnone

declare i64 @llvm.aarch64.neon.saddlv.i64.v2i32(<2 x i32>) nounwind readnone

