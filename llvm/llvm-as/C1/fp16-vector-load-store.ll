


define <4 x half> @load_64(<4 x half>* nocapture readonly %a) #0 {


entry:
  %0 = load <4 x half>, <4 x half>* %a, align 8
  ret <4 x half> %0
}


define <8 x half> @load_128(<8 x half>* nocapture readonly %a) #0 {


entry:
  %0 = load <8 x half>, <8 x half>* %a, align 16
  ret <8 x half> %0
}


define <4 x half> @load_dup_64(half* nocapture readonly %a) #0 {


entry:
  %0 = load half, half* %a, align 2
  %1 = insertelement <4 x half> undef, half %0, i32 0
  %2 = shufflevector <4 x half> %1, <4 x half> undef, <4 x i32> zeroinitializer
  ret <4 x half> %2
}


define <8 x half> @load_dup_128(half* nocapture readonly %a) #0 {


entry:
  %0 = load half, half* %a, align 2
  %1 = insertelement <8 x half> undef, half %0, i32 0
  %2 = shufflevector <8 x half> %1, <8 x half> undef, <8 x i32> zeroinitializer
  ret <8 x half> %2
}


define <4 x half> @load_lane_64(half* nocapture readonly %a, <4 x half> %b) #0 {


entry:
  %0 = load half, half* %a, align 2
  %1 = insertelement <4 x half> %b, half %0, i32 2
  ret <4 x half> %1
}


define <8 x half> @load_lane_128(half* nocapture readonly %a, <8 x half> %b) #0 {


entry:
  %0 = load half, half* %a, align 2
  %1 = insertelement <8 x half> %b, half %0, i32 5
  ret <8 x half> %1
}


define void @store_64(<4 x half>* nocapture %a, <4 x half> %b) #1 {


entry:
  store <4 x half> %b, <4 x half>* %a, align 8
  ret void
}


define void @store_128(<8 x half>* nocapture %a, <8 x half> %b) #1 {


entry:
  store <8 x half> %b, <8 x half>* %a, align 16
  ret void
}


define void @store_lane_64(half* nocapture %a, <4 x half> %b) #1 {


entry:
  %0 = extractelement <4 x half> %b, i32 2
  store half %0, half* %a, align 2
  ret void
}


define void @store_lane_128(half* nocapture %a, <8 x half> %b) #1 {


entry:
  %0 = extractelement <8 x half> %b, i32 5
  store half %0, half* %a, align 2
  ret void
}


declare { <4 x half>, <4 x half> } @llvm.aarch64.neon.ld2.v4f16.p0v4f16(<4 x half>*)
declare { <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld3.v4f16.p0v4f16(<4 x half>*)
declare { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld4.v4f16.p0v4f16(<4 x half>*)
declare void @llvm.aarch64.neon.st2.v4f16.p0v4f16(<4 x half>, <4 x half>, <4 x half>*)
declare void @llvm.aarch64.neon.st3.v4f16.p0v4f16(<4 x half>, <4 x half>, <4 x half>, <4 x half>*)
declare void @llvm.aarch64.neon.st4.v4f16.p0v4f16(<4 x half>, <4 x half>, <4 x half>, <4 x half>, <4 x half>*)
declare { <8 x half>, <8 x half> } @llvm.aarch64.neon.ld2.v8f16.p0v8f16(<8 x half>*)
declare { <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld3.v8f16.p0v8f16(<8 x half>*)
declare { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4.v8f16.p0v8f16(<8 x half>*)
declare void @llvm.aarch64.neon.st2.v8f16.p0v8f16(<8 x half>, <8 x half>, <8 x half>*)
declare void @llvm.aarch64.neon.st3.v8f16.p0v8f16(<8 x half>, <8 x half>, <8 x half>, <8 x half>*)
declare void @llvm.aarch64.neon.st4.v8f16.p0v8f16(<8 x half>, <8 x half>, <8 x half>, <8 x half>, <8 x half>*)


define { <4 x half>, <4 x half> } @load_interleave_64_2(<4 x half>* %a) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half> } @llvm.aarch64.neon.ld2.v4f16.p0v4f16(<4 x half>* %a)
  ret { <4 x half>, <4 x half> } %0
}


define { <4 x half>, <4 x half>, <4 x half> } @load_interleave_64_3(<4 x half>* %a) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld3.v4f16.p0v4f16(<4 x half>* %a)
  ret { <4 x half>, <4 x half>, <4 x half> } %0
}


define { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @load_interleave_64_4(<4 x half>* %a) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld4.v4f16.p0v4f16(<4 x half>* %a)
  ret { <4 x half>, <4 x half>, <4 x half>, <4 x half> } %0
}


define void @store_interleave_64_2(<4 x half>* %a, <4 x half> %b, <4 x half> %c) #0 {


entry:
  tail call void @llvm.aarch64.neon.st2.v4f16.p0v4f16(<4 x half> %b, <4 x half> %c, <4 x half>* %a)
  ret void
}


define void @store_interleave_64_3(<4 x half>* %a, <4 x half> %b, <4 x half> %c, <4 x half> %d) #0 {


entry:
  tail call void @llvm.aarch64.neon.st3.v4f16.p0v4f16(<4 x half> %b, <4 x half> %c, <4 x half> %d, <4 x half>* %a)
  ret void
}


define void @store_interleave_64_4(<4 x half>* %a, <4 x half> %b, <4 x half> %c, <4 x half> %d, <4 x half> %e) #0 {


entry:
  tail call void @llvm.aarch64.neon.st4.v4f16.p0v4f16(<4 x half> %b, <4 x half> %c, <4 x half> %d, <4 x half> %e, <4 x half>* %a)
  ret void
}


define { <8 x half>, <8 x half> } @load_interleave_128_2(<8 x half>* %a) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half> } @llvm.aarch64.neon.ld2.v8f16.p0v8f16(<8 x half>* %a)
  ret { <8 x half>, <8 x half> } %0
}


define { <8 x half>, <8 x half>, <8 x half> } @load_interleave_128_3(<8 x half>* %a) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld3.v8f16.p0v8f16(<8 x half>* %a)
  ret { <8 x half>, <8 x half>, <8 x half> } %0
}


define { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @load_interleave_128_4(<8 x half>* %a) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4.v8f16.p0v8f16(<8 x half>* %a)
  ret { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %0
}


define void @store_interleave_128_2(<8 x half>* %a, <8 x half> %b, <8 x half> %c) #0 {


entry:
  tail call void @llvm.aarch64.neon.st2.v8f16.p0v8f16(<8 x half> %b, <8 x half> %c, <8 x half>* %a)
  ret void
}


define void @store_interleave_128_3(<8 x half>* %a, <8 x half> %b, <8 x half> %c, <8 x half> %d) #0 {


entry:
  tail call void @llvm.aarch64.neon.st3.v8f16.p0v8f16(<8 x half> %b, <8 x half> %c, <8 x half> %d, <8 x half>* %a)
  ret void
}


define void @store_interleave_128_4(<8 x half>* %a, <8 x half> %b, <8 x half> %c, <8 x half> %d, <8 x half> %e) #0 {


entry:
  tail call void @llvm.aarch64.neon.st4.v8f16.p0v8f16(<8 x half> %b, <8 x half> %c, <8 x half> %d, <8 x half> %e, <8 x half>* %a)
  ret void
}


declare { <4 x half>, <4 x half> } @llvm.aarch64.neon.ld2r.v4f16.p0f16(half*)
declare { <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld3r.v4f16.p0f16(half*)
declare { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld4r.v4f16.p0f16(half*)
declare { <8 x half>, <8 x half> } @llvm.aarch64.neon.ld2r.v8f16.p0f16(half*)
declare { <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld3r.v8f16.p0f16(half*)
declare { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4r.v8f16.p0f16(half*)


define { <4 x half>, <4 x half> } @load_dup_64_2(half* %a) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half> } @llvm.aarch64.neon.ld2r.v4f16.p0f16(half* %a)
  ret { <4 x half>, <4 x half> } %0
}


define { <4 x half>, <4 x half>, <4 x half> } @load_dup_64_3(half* %a) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld3r.v4f16.p0f16(half* %a)
  ret { <4 x half>, <4 x half>, <4 x half> } %0
}


define { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @load_dup_64_4(half* %a) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld4r.v4f16.p0f16(half* %a)
  ret { <4 x half>, <4 x half>, <4 x half>, <4 x half> } %0
}


define { <8 x half>, <8 x half> } @load_dup_128_2(half* %a) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half> } @llvm.aarch64.neon.ld2r.v8f16.p0f16(half* %a)
  ret { <8 x half>, <8 x half> } %0
}


define { <8 x half>, <8 x half>, <8 x half> } @load_dup_128_3(half* %a) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld3r.v8f16.p0f16(half* %a)
  ret { <8 x half>, <8 x half>, <8 x half> } %0
}


define { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @load_dup_128_4(half* %a) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4r.v8f16.p0f16(half* %a)
  ret { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %0
}



declare { <4 x half>, <4 x half> } @llvm.aarch64.neon.ld2lane.v4f16.p0f16(<4 x half>, <4 x half>, i64, half*)
declare { <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld3lane.v4f16.p0f16(<4 x half>, <4 x half>, <4 x half>, i64, half*)
declare { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld4lane.v4f16.p0f16(<4 x half>, <4 x half>, <4 x half>, <4 x half>, i64, half*)
declare void @llvm.aarch64.neon.st2lane.v4f16.p0f16(<4 x half>, <4 x half>, i64, half*)
declare void @llvm.aarch64.neon.st3lane.v4f16.p0f16(<4 x half>, <4 x half>, <4 x half>, i64, half*)
declare void @llvm.aarch64.neon.st4lane.v4f16.p0f16(<4 x half>, <4 x half>, <4 x half>, <4 x half>, i64, half*)
declare { <8 x half>, <8 x half> } @llvm.aarch64.neon.ld2lane.v8f16.p0f16(<8 x half>, <8 x half>, i64, half*)
declare { <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld3lane.v8f16.p0f16(<8 x half>, <8 x half>, <8 x half>, i64, half*)
declare { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4lane.v8f16.p0f16(<8 x half>, <8 x half>, <8 x half>, <8 x half>, i64, half*)
declare void @llvm.aarch64.neon.st2lane.v8f16.p0f16(<8 x half>, <8 x half>, i64, half*)
declare void @llvm.aarch64.neon.st3lane.v8f16.p0f16(<8 x half>, <8 x half>, <8 x half>, i64, half*)
declare void @llvm.aarch64.neon.st4lane.v8f16.p0f16(<8 x half>, <8 x half>, <8 x half>, <8 x half>, i64, half*)


define { <4 x half>, <4 x half> } @load_lane_64_2(half* %a, <4 x half> %b, <4 x half> %c) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half> } @llvm.aarch64.neon.ld2lane.v4f16.p0f16(<4 x half> %b, <4 x half> %c, i64 2, half* %a)
  ret { <4 x half>, <4 x half> } %0
}


define { <4 x half>, <4 x half>, <4 x half> } @load_lane_64_3(half* %a, <4 x half> %b, <4 x half> %c, <4 x half> %d) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld3lane.v4f16.p0f16(<4 x half> %b, <4 x half> %c, <4 x half> %d, i64 2, half* %a)
  ret { <4 x half>, <4 x half>, <4 x half> } %0
}


define { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @load_lane_64_4(half* %a, <4 x half> %b, <4 x half> %c, <4 x half> %d, <4 x half> %e) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld4lane.v4f16.p0f16(<4 x half> %b, <4 x half> %c, <4 x half> %d, <4 x half> %e, i64 2, half* %a)
  ret { <4 x half>, <4 x half>, <4 x half>, <4 x half> } %0
}


define void @store_lane_64_2(half* %a, <4 x half> %b, <4 x half> %c) #0 {


entry:
  tail call void @llvm.aarch64.neon.st2lane.v4f16.p0f16(<4 x half> %b, <4 x half> %c, i64 2, half* %a)
  ret void
}


define void @store_lane_64_3(half* %a, <4 x half> %b, <4 x half> %c, <4 x half> %d) #0 {


entry:
  tail call void @llvm.aarch64.neon.st3lane.v4f16.p0f16(<4 x half> %b, <4 x half> %c, <4 x half> %d, i64 2, half* %a)
  ret void
}


define void @store_lane_64_4(half* %a, <4 x half> %b, <4 x half> %c, <4 x half> %d, <4 x half> %e) #0 {


entry:
  tail call void @llvm.aarch64.neon.st4lane.v4f16.p0f16(<4 x half> %b, <4 x half> %c, <4 x half> %d, <4 x half> %e, i64 2, half* %a)
  ret void
}


define { <8 x half>, <8 x half> } @load_lane_128_2(half* %a, <8 x half> %b, <8 x half> %c) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half> } @llvm.aarch64.neon.ld2lane.v8f16.p0f16(<8 x half> %b, <8 x half> %c, i64 2, half* %a)
  ret { <8 x half>, <8 x half> } %0
}


define { <8 x half>, <8 x half>, <8 x half> } @load_lane_128_3(half* %a, <8 x half> %b, <8 x half> %c, <8 x half> %d) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld3lane.v8f16.p0f16(<8 x half> %b, <8 x half> %c, <8 x half> %d, i64 2, half* %a)
  ret { <8 x half>, <8 x half>, <8 x half> } %0
}


define { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @load_lane_128_4(half* %a, <8 x half> %b, <8 x half> %c, <8 x half> %d, <8 x half> %e) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4lane.v8f16.p0f16(<8 x half> %b, <8 x half> %c, <8 x half> %d, <8 x half> %e, i64 2, half* %a)
  ret { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %0
}


define void @store_lane_128_2(half* %a, <8 x half> %b, <8 x half> %c) #0 {


entry:
  tail call void @llvm.aarch64.neon.st2lane.v8f16.p0f16(<8 x half> %b, <8 x half> %c, i64 2, half* %a)
  ret void
}


define void @store_lane_128_3(half* %a, <8 x half> %b, <8 x half> %c, <8 x half> %d) #0 {


entry:
  tail call void @llvm.aarch64.neon.st3lane.v8f16.p0f16(<8 x half> %b, <8 x half> %c, <8 x half> %d, i64 2, half* %a)
  ret void
}


define void @store_lane_128_4(half* %a, <8 x half> %b, <8 x half> %c, <8 x half> %d, <8 x half> %e) #0 {


entry:
  tail call void @llvm.aarch64.neon.st4lane.v8f16.p0f16(<8 x half> %b, <8 x half> %c, <8 x half> %d, <8 x half> %e, i64 2, half* %a)
  ret void
}


declare { <4 x half>, <4 x half> } @llvm.aarch64.neon.ld1x2.v4f16.p0v4f16(<4 x half>*)
declare { <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld1x3.v4f16.p0v4f16(<4 x half>*)
declare { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld1x4.v4f16.p0v4f16(<4 x half>*)
declare void @llvm.aarch64.neon.st1x2.v4f16.p0v4f16(<4 x half>, <4 x half>, <4 x half>*)
declare void @llvm.aarch64.neon.st1x3.v4f16.p0v4f16(<4 x half>, <4 x half>, <4 x half>, <4 x half>*)
declare void @llvm.aarch64.neon.st1x4.v4f16.p0v4f16(<4 x half>, <4 x half>, <4 x half>, <4 x half>, <4 x half>*)
declare { <8 x half>, <8 x half> } @llvm.aarch64.neon.ld1x2.v8f16.p0v8f16(<8 x half>*)
declare { <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld1x3.v8f16.p0v8f16(<8 x half>*)
declare { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld1x4.v8f16.p0v8f16(<8 x half>*)
declare void @llvm.aarch64.neon.st1x2.v8f16.p0v8f16(<8 x half>, <8 x half>, <8 x half>*)
declare void @llvm.aarch64.neon.st1x3.v8f16.p0v8f16(<8 x half>, <8 x half>, <8 x half>, <8 x half>*)
declare void @llvm.aarch64.neon.st1x4.v8f16.p0v8f16(<8 x half>, <8 x half>, <8 x half>, <8 x half>, <8 x half>*)


define { <4 x half>, <4 x half> } @load_64_2(<4 x half>* %a) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half> } @llvm.aarch64.neon.ld1x2.v4f16.p0v4f16(<4 x half>* %a)
  ret { <4 x half>, <4 x half> } %0
}


define { <4 x half>, <4 x half>, <4 x half> } @load_64_3(<4 x half>* %a) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld1x3.v4f16.p0v4f16(<4 x half>* %a)
  ret { <4 x half>, <4 x half>, <4 x half> } %0
}


define { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @load_64_4(<4 x half>* %a) #0 {


entry:
  %0 = tail call { <4 x half>, <4 x half>, <4 x half>, <4 x half> } @llvm.aarch64.neon.ld1x4.v4f16.p0v4f16(<4 x half>* %a)
  ret { <4 x half>, <4 x half>, <4 x half>, <4 x half> } %0
}


define void @store_64_2(<4 x half>* %a, <4 x half> %b, <4 x half> %c) #0 {


entry:
  tail call void @llvm.aarch64.neon.st1x2.v4f16.p0v4f16(<4 x half> %b, <4 x half> %c, <4 x half>* %a)
  ret void
}


define void @store_64_3(<4 x half>* %a, <4 x half> %b, <4 x half> %c, <4 x half> %d) #0 {


entry:
  tail call void @llvm.aarch64.neon.st1x3.v4f16.p0v4f16(<4 x half> %b, <4 x half> %c, <4 x half> %d, <4 x half>* %a)
  ret void
}


define void @store_64_4(<4 x half>* %a, <4 x half> %b, <4 x half> %c, <4 x half> %d, <4 x half> %e) #0 {


entry:
  tail call void @llvm.aarch64.neon.st1x4.v4f16.p0v4f16(<4 x half> %b, <4 x half> %c, <4 x half> %d, <4 x half> %e, <4 x half>* %a)
  ret void
}


define { <8 x half>, <8 x half> } @load_128_2(<8 x half>* %a) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half> } @llvm.aarch64.neon.ld1x2.v8f16.p0v8f16(<8 x half>* %a)
  ret { <8 x half>, <8 x half> } %0
}


define { <8 x half>, <8 x half>, <8 x half> } @load_128_3(<8 x half>* %a) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld1x3.v8f16.p0v8f16(<8 x half>* %a)
  ret { <8 x half>, <8 x half>, <8 x half> } %0
}


define { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @load_128_4(<8 x half>* %a) #0 {


entry:
  %0 = tail call { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld1x4.v8f16.p0v8f16(<8 x half>* %a)
  ret { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %0
}


define void @store_128_2(<8 x half>* %a, <8 x half> %b, <8 x half> %c) #0 {


entry:
  tail call void @llvm.aarch64.neon.st1x2.v8f16.p0v8f16(<8 x half> %b, <8 x half> %c, <8 x half>* %a)
  ret void
}


define void @store_128_3(<8 x half>* %a, <8 x half> %b, <8 x half> %c, <8 x half> %d) #0 {


entry:
  tail call void @llvm.aarch64.neon.st1x3.v8f16.p0v8f16(<8 x half> %b, <8 x half> %c, <8 x half> %d, <8 x half>* %a)
  ret void
}


define void @store_128_4(<8 x half>* %a, <8 x half> %b, <8 x half> %c, <8 x half> %d, <8 x half> %e) #0 {


entry:
  tail call void @llvm.aarch64.neon.st1x4.v8f16.p0v8f16(<8 x half> %b, <8 x half> %c, <8 x half> %d, <8 x half> %e, <8 x half>* %a)
  ret void
}
