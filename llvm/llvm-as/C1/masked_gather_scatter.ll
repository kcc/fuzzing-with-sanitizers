

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"




define <16 x float> @test1(float* %base, <16 x i32> %ind) {

  %broadcast.splatinsert = insertelement <16 x float*> undef, float* %base, i32 0
  %broadcast.splat = shufflevector <16 x float*> %broadcast.splatinsert, <16 x float*> undef, <16 x i32> zeroinitializer

  %sext_ind = sext <16 x i32> %ind to <16 x i64>
  %gep.random = getelementptr float, <16 x float*> %broadcast.splat, <16 x i64> %sext_ind
  
  %res = call <16 x float> @llvm.masked.gather.v16f32(<16 x float*> %gep.random, i32 4, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <16 x float> undef)
  ret <16 x float>%res
}

declare <16 x i32> @llvm.masked.gather.v16i32(<16 x i32*>, i32, <16 x i1>, <16 x i32>)
declare <16 x float> @llvm.masked.gather.v16f32(<16 x float*>, i32, <16 x i1>, <16 x float>)
declare <8 x i32> @llvm.masked.gather.v8i32(<8 x i32*> , i32, <8 x i1> , <8 x i32> )
  



define <16 x float> @test2(float* %base, <16 x i32> %ind, i16 %mask) {

  %broadcast.splatinsert = insertelement <16 x float*> undef, float* %base, i32 0
  %broadcast.splat = shufflevector <16 x float*> %broadcast.splatinsert, <16 x float*> undef, <16 x i32> zeroinitializer

  %sext_ind = sext <16 x i32> %ind to <16 x i64>
  %gep.random = getelementptr float, <16 x float*> %broadcast.splat, <16 x i64> %sext_ind
  %imask = bitcast i16 %mask to <16 x i1>
  %res = call <16 x float> @llvm.masked.gather.v16f32(<16 x float*> %gep.random, i32 4, <16 x i1> %imask, <16 x float>undef)
  ret <16 x float> %res
}




define <16 x i32> @test3(i32* %base, <16 x i32> %ind, i16 %mask) {

  %broadcast.splatinsert = insertelement <16 x i32*> undef, i32* %base, i32 0
  %broadcast.splat = shufflevector <16 x i32*> %broadcast.splatinsert, <16 x i32*> undef, <16 x i32> zeroinitializer

  %sext_ind = sext <16 x i32> %ind to <16 x i64>
  %gep.random = getelementptr i32, <16 x i32*> %broadcast.splat, <16 x i64> %sext_ind
  %imask = bitcast i16 %mask to <16 x i1>
  %res = call <16 x i32> @llvm.masked.gather.v16i32(<16 x i32*> %gep.random, i32 4, <16 x i1> %imask, <16 x i32>undef)
  ret <16 x i32> %res
}







define <16 x i32> @test4(i32* %base, <16 x i32> %ind, i16 %mask) {

  %broadcast.splatinsert = insertelement <16 x i32*> undef, i32* %base, i32 0
  %broadcast.splat = shufflevector <16 x i32*> %broadcast.splatinsert, <16 x i32*> undef, <16 x i32> zeroinitializer

  %gep.random = getelementptr i32, <16 x i32*> %broadcast.splat, <16 x i32> %ind
  %imask = bitcast i16 %mask to <16 x i1>
  %gt1 = call <16 x i32> @llvm.masked.gather.v16i32(<16 x i32*> %gep.random, i32 4, <16 x i1> %imask, <16 x i32>undef)
  %gt2 = call <16 x i32> @llvm.masked.gather.v16i32(<16 x i32*> %gep.random, i32 4, <16 x i1> %imask, <16 x i32>%gt1)
  %res = add <16 x i32> %gt1, %gt2
  ret <16 x i32> %res
}






define void @test5(i32* %base, <16 x i32> %ind, i16 %mask, <16 x i32>%val) {

  %broadcast.splatinsert = insertelement <16 x i32*> undef, i32* %base, i32 0
  %broadcast.splat = shufflevector <16 x i32*> %broadcast.splatinsert, <16 x i32*> undef, <16 x i32> zeroinitializer

  %gep.random = getelementptr i32, <16 x i32*> %broadcast.splat, <16 x i32> %ind
  %imask = bitcast i16 %mask to <16 x i1>
  call void @llvm.masked.scatter.v16i32(<16 x i32>%val, <16 x i32*> %gep.random, i32 4, <16 x i1> %imask)
  call void @llvm.masked.scatter.v16i32(<16 x i32>%val, <16 x i32*> %gep.random, i32 4, <16 x i1> %imask)
  ret void
}

declare void @llvm.masked.scatter.v8i32(<8 x i32> , <8 x i32*> , i32 , <8 x i1> )
declare void @llvm.masked.scatter.v16i32(<16 x i32> , <16 x i32*> , i32 , <16 x i1> )






define <8 x i32> @test6(<8 x i32>%a1, <8 x i32*> %ptr) {

  %a = call <8 x i32> @llvm.masked.gather.v8i32(<8 x i32*> %ptr, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i32> undef)

  call void @llvm.masked.scatter.v8i32(<8 x i32> %a1, <8 x i32*> %ptr, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>)
  ret <8 x i32>%a
}







define <8 x i32> @test7(i32* %base, <8 x i32> %ind, i8 %mask) {

  %broadcast.splatinsert = insertelement <8 x i32*> undef, i32* %base, i32 0
  %broadcast.splat = shufflevector <8 x i32*> %broadcast.splatinsert, <8 x i32*> undef, <8 x i32> zeroinitializer

  %gep.random = getelementptr i32, <8 x i32*> %broadcast.splat, <8 x i32> %ind
  %imask = bitcast i8 %mask to <8 x i1>
  %gt1 = call <8 x i32> @llvm.masked.gather.v8i32(<8 x i32*> %gep.random, i32 4, <8 x i1> %imask, <8 x i32>undef)
  %gt2 = call <8 x i32> @llvm.masked.gather.v8i32(<8 x i32*> %gep.random, i32 4, <8 x i1> %imask, <8 x i32>%gt1)
  %res = add <8 x i32> %gt1, %gt2
  ret <8 x i32> %res
}











define <16 x i32> @test8(<16 x i32*> %ptr.random, <16 x i32> %ind, i16 %mask) {
  %imask = bitcast i16 %mask to <16 x i1>
  %gt1 = call <16 x i32> @llvm.masked.gather.v16i32(<16 x i32*> %ptr.random, i32 4, <16 x i1> %imask, <16 x i32>undef)
  %gt2 = call <16 x i32> @llvm.masked.gather.v16i32(<16 x i32*> %ptr.random, i32 4, <16 x i1> %imask, <16 x i32>%gt1)
  %res = add <16 x i32> %gt1, %gt2
  ret <16 x i32> %res
}
