


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"



















define void @Store(i32* nocapture %p, i32 %x) nounwind uwtable sanitize_memory {
entry:
  store i32 %x, i32* %p, align 4
  ret void
}



















define void @AlignedStore(i32* nocapture %p, i32 %x) nounwind uwtable sanitize_memory {
entry:
  store i32 %x, i32* %p, align 32
  ret void
}
















define void @LoadAndCmp(i32* nocapture %a) nounwind uwtable sanitize_memory {
entry:
  %0 = load i32, i32* %a, align 4
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  tail call void (...) @foo() nounwind
  br label %if.end

if.end:                                           
  ret void
}

declare void @foo(...)










define i32 @ReturnInt() nounwind uwtable readnone sanitize_memory {
entry:
  ret i32 123
}






define void @CopyRetVal(i32* nocapture %a) nounwind uwtable sanitize_memory {
entry:
  %call = tail call i32 @ReturnInt() nounwind
  store i32 %call, i32* %a, align 4
  ret void
}









define void @FuncWithPhi(i32* nocapture %a, i32* %b, i32* nocapture %c) nounwind uwtable sanitize_memory {
entry:
  %tobool = icmp eq i32* %b, null
  br i1 %tobool, label %if.else, label %if.then

  if.then:                                          
  %0 = load i32, i32* %b, align 4
  br label %if.end

  if.else:                                          
  %1 = load i32, i32* %c, align 4
  br label %if.end

  if.end:                                           
  %t.0 = phi i32 [ %0, %if.then ], [ %1, %if.else ]
  store i32 %t.0, i32* %a, align 4
  ret void
}









define void @ShlConst(i32* nocapture %x) nounwind uwtable sanitize_memory {
entry:
  %0 = load i32, i32* %x, align 4
  %1 = shl i32 %0, 10
  store i32 %1, i32* %x, align 4
  ret void
}











define void @ShlNonConst(i32* nocapture %x) nounwind uwtable sanitize_memory {
entry:
  %0 = load i32, i32* %x, align 4
  %1 = shl i32 10, %0
  store i32 %1, i32* %x, align 4
  ret void
}










define void @SExt(i32* nocapture %a, i16* nocapture %b) nounwind uwtable sanitize_memory {
entry:
  %0 = load i16, i16* %b, align 2
  %1 = sext i16 %0 to i32
  store i32 %1, i32* %a, align 4
  ret void
}












define void @MemSet(i8* nocapture %x) nounwind uwtable sanitize_memory {
entry:
  call void @llvm.memset.p0i8.i64(i8* %x, i8 42, i64 10, i32 1, i1 false)
  ret void
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind







define void @MemCpy(i8* nocapture %x, i8* nocapture %y) nounwind uwtable sanitize_memory {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x, i8* %y, i64 10, i32 1, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind







define void @MemMove(i8* nocapture %x, i8* nocapture %y) nounwind uwtable sanitize_memory {
entry:
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %x, i8* %y, i64 10, i32 1, i1 false)
  ret void
}

declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind








define i32 @Select(i32 %a, i32 %b, i1 %c) nounwind uwtable readnone sanitize_memory {
entry:
  %cond = select i1 %c, i32 %a, i32 %b
  ret i32 %cond
}



















define <8 x i16> @SelectVector(<8 x i16> %a, <8 x i16> %b, <8 x i1> %c) nounwind uwtable readnone sanitize_memory {
entry:
  %cond = select <8 x i1> %c, <8 x i16> %a, <8 x i16> %b
  ret <8 x i16> %cond
}



















define <8 x i16> @SelectVector2(<8 x i16> %a, <8 x i16> %b, i1 %c) nounwind uwtable readnone sanitize_memory {
entry:
  %cond = select i1 %c, <8 x i16> %a, <8 x i16> %b
  ret <8 x i16> %cond
}













define { i64, i64 } @SelectStruct(i1 zeroext %x, { i64, i64 } %a, { i64, i64 } %b) readnone sanitize_memory {
entry:
  %c = select i1 %x, { i64, i64 } %a, { i64, i64 } %b
  ret { i64, i64 } %c
}










define { i64*, double } @SelectStruct2(i1 zeroext %x, { i64*, double } %a, { i64*, double } %b) readnone sanitize_memory {
entry:
  %c = select i1 %x, { i64*, double } %a, { i64*, double } %b
  ret { i64*, double } %c
}










define i8* @IntToPtr(i64 %x) nounwind uwtable readnone sanitize_memory {
entry:
  %0 = inttoptr i64 %x to i8*
  ret i8* %0
}









define i8* @IntToPtr_ZExt(i16 %x) nounwind uwtable readnone sanitize_memory {
entry:
  %0 = inttoptr i16 %x to i8*
  ret i8* %0
}












define i32 @Div(i32 %a, i32 %b) nounwind uwtable readnone sanitize_memory {
entry:
  %div = udiv i32 %a, %b
  ret i32 %div
}












define zeroext i1 @ICmpSLTZero(i32 %x) nounwind uwtable readnone sanitize_memory {
  %1 = icmp slt i32 %x, 0
  ret i1 %1
}








define zeroext i1 @ICmpSGEZero(i32 %x) nounwind uwtable readnone sanitize_memory {
  %1 = icmp sge i32 %x, 0
  ret i1 %1
}








define zeroext i1 @ICmpSGTZero(i32 %x) nounwind uwtable readnone sanitize_memory {
  %1 = icmp sgt i32 0, %x
  ret i1 %1
}








define zeroext i1 @ICmpSLEZero(i32 %x) nounwind uwtable readnone sanitize_memory {
  %1 = icmp sle i32 0, %x
  ret i1 %1
}











define zeroext i1 @ICmpSLTAllOnes(i32 %x) nounwind uwtable readnone sanitize_memory {
  %1 = icmp slt i32 -1, %x
  ret i1 %1
}








define zeroext i1 @ICmpSGEAllOnes(i32 %x) nounwind uwtable readnone sanitize_memory {
  %1 = icmp sge i32 -1, %x
  ret i1 %1
}








define zeroext i1 @ICmpSGTAllOnes(i32 %x) nounwind uwtable readnone sanitize_memory {
  %1 = icmp sgt i32 %x, -1
  ret i1 %1
}








define zeroext i1 @ICmpSLEAllOnes(i32 %x) nounwind uwtable readnone sanitize_memory {
  %1 = icmp sle i32 %x, -1
  ret i1 %1
}












define <2 x i1> @ICmpSLT_vector_Zero(<2 x i32*> %x) nounwind uwtable readnone sanitize_memory {
  %1 = icmp slt <2 x i32*> %x, zeroinitializer
  ret <2 x i1> %1
}











define <2 x i1> @ICmpSLT_vector_AllOnes(<2 x i32> %x) nounwind uwtable readnone sanitize_memory {
  %1 = icmp slt <2 x i32> <i32 -1, i32 -1>, %x
  ret <2 x i1> %1
}












define zeroext i1 @ICmpUGTConst(i32 %x) nounwind uwtable readnone sanitize_memory {
entry:
  %cmp = icmp ugt i32 %x, 7
  ret i1 %cmp
}














define i32 @ShadowLoadAlignmentLarge() nounwind uwtable sanitize_memory {
  %y = alloca i32, align 64
  %1 = load volatile i32, i32* %y, align 64
  ret i32 %1
}






define i32 @ShadowLoadAlignmentSmall() nounwind uwtable sanitize_memory {
  %y = alloca i32, align 2
  %1 = load volatile i32, i32* %y, align 2
  ret i32 %1
}












define i32 @ExtractElement(<4 x i32> %vec, i32 %idx) sanitize_memory {
  %x = extractelement <4 x i32> %vec, i32 %idx
  ret i32 %x
}







define <4 x i32> @InsertElement(<4 x i32> %vec, i32 %idx, i32 %x) sanitize_memory {
  %vec1 = insertelement <4 x i32> %vec, i32 %x, i32 %idx
  ret <4 x i32> %vec1
}







define <4 x i32> @ShuffleVector(<4 x i32> %vec, <4 x i32> %vec1) sanitize_memory {
  %vec2 = shufflevector <4 x i32> %vec, <4 x i32> %vec1,
                        <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  ret <4 x i32> %vec2
}









define i32 @BSwap(i32 %x) nounwind uwtable readnone sanitize_memory {
  %y = tail call i32 @llvm.bswap.i32(i32 %x)
  ret i32 %y
}

declare i32 @llvm.bswap.i32(i32) nounwind readnone












define void @StoreIntrinsic(i8* %p, <4 x float> %x) nounwind uwtable sanitize_memory {
  call void @llvm.x86.sse.storeu.ps(i8* %p, <4 x float> %x)
  ret void
}

declare void @llvm.x86.sse.storeu.ps(i8*, <4 x float>) nounwind











define <16 x i8> @LoadIntrinsic(i8* %p) nounwind uwtable sanitize_memory {
  %call = call <16 x i8> @llvm.x86.sse3.ldu.dq(i8* %p)
  ret <16 x i8> %call
}

declare <16 x i8> @llvm.x86.sse3.ldu.dq(i8* %p) nounwind
















define <8 x i16> @Paddsw128(<8 x i16> %a, <8 x i16> %b) nounwind uwtable sanitize_memory {
  %call = call <8 x i16> @llvm.x86.sse2.padds.w(<8 x i16> %a, <8 x i16> %b)
  ret <8 x i16> %call
}

declare <8 x i16> @llvm.x86.sse2.padds.w(<8 x i16> %a, <8 x i16> %b) nounwind



















define <8 x i8*> @VectorOfPointers(<8 x i8*>* %p) nounwind uwtable sanitize_memory {
  %x = load <8 x i8*>, <8 x i8*>* %p
  ret <8 x i8*> %x
}









declare void @llvm.va_copy(i8*, i8*) nounwind

define void @VACopy(i8* %p1, i8* %p2) nounwind uwtable sanitize_memory {
  call void @llvm.va_copy(i8* %p1, i8* %p2) nounwind
  ret void
}









%struct.__va_list_tag = type { i32, i32, i8*, i8* }
declare void @llvm.va_start(i8*) nounwind


define void @VAStart(i32 %x, ...) sanitize_memory {
entry:
  %x.addr = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %x, i32* %x.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  ret void
}











define void @VolatileStore(i32* nocapture %p, i32 %x) nounwind uwtable sanitize_memory {
entry:
  store volatile i32 %x, i32* %p, align 4
  ret void
}









define i32 @NoSanitizeMemory(i32 %x) uwtable {
entry:
  %tobool = icmp eq i32 %x, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  tail call void @bar()
  br label %if.end

if.end:                                           
  ret i32 %x
}

declare void @bar()











define i32 @NoSanitizeMemoryAlloca() {
entry:
  %p = alloca i32, align 4
  %x = call i32 @NoSanitizeMemoryAllocaHelper(i32* %p)
  ret i32 %x
}

declare i32 @NoSanitizeMemoryAllocaHelper(i32* %p)










define i32 @NoSanitizeMemoryUndef() {
entry:
  %x = call i32 @NoSanitizeMemoryUndefHelper(i32 undef)
  ret i32 %x
}

declare i32 @NoSanitizeMemoryUndefHelper(i32 %x)









define i32 @NoSanitizeMemoryPHI(i32 %x) {
entry:
  %tobool = icmp ne i32 %x, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        
  br label %cond.end

cond.false:                                       
  br label %cond.end

cond.end:                                         
  %cond = phi i32 [ undef, %cond.true ], [ undef, %cond.false ]
  ret i32 %cond
}










define i32 @NoSanitizeMemoryParamTLS(i32* nocapture readonly %x) {
entry:
  %0 = load i32, i32* %x, align 4
  %call = tail call i32 @NoSanitizeMemoryParamTLSHelper(i32 %0)
  ret i32 %call
}

declare i32 @NoSanitizeMemoryParamTLSHelper(i32 %x)








define <2 x i64> @ArgumentShadowAlignment(i64 %a, <2 x i64> %b) sanitize_memory {
entry:
  ret <2 x i64> %b
}









define { i64, i32 } @make_pair_64_32(i64 %x, i32 %y) sanitize_memory {
entry:
  %a = insertvalue { i64, i32 } undef, i64 %x, 0
  %b = insertvalue { i64, i32 } %a, i32 %y, 1
  ret { i64, i32 } %b
}





















%struct.StructByVal = type { i32, i32, i32, i32 }

declare void @VAArgStructFn(i32 %guard, ...)

define void @VAArgStruct(%struct.StructByVal* nocapture %s) sanitize_memory {
entry:
  %agg.tmp2 = alloca %struct.StructByVal, align 8
  %0 = bitcast %struct.StructByVal* %s to i8*
  %agg.tmp.sroa.0.0..sroa_cast = bitcast %struct.StructByVal* %s to i64*
  %agg.tmp.sroa.0.0.copyload = load i64, i64* %agg.tmp.sroa.0.0..sroa_cast, align 4
  %agg.tmp.sroa.2.0..sroa_idx = getelementptr inbounds %struct.StructByVal, %struct.StructByVal* %s, i64 0, i32 2
  %agg.tmp.sroa.2.0..sroa_cast = bitcast i32* %agg.tmp.sroa.2.0..sroa_idx to i64*
  %agg.tmp.sroa.2.0.copyload = load i64, i64* %agg.tmp.sroa.2.0..sroa_cast, align 4
  %1 = bitcast %struct.StructByVal* %agg.tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %0, i64 16, i32 4, i1 false)
  call void (i32, ...) @VAArgStructFn(i32 undef, i64 %agg.tmp.sroa.0.0.copyload, i64 %agg.tmp.sroa.2.0.copyload, i64 %agg.tmp.sroa.0.0.copyload, i64 %agg.tmp.sroa.2.0.copyload, %struct.StructByVal* byval align 8 %agg.tmp2)
  ret void
}






















declare i32 @InnerTailCall(i32 %a)

define void @MismatchedReturnTypeTailCall(i32 %a) sanitize_memory {
  %b = tail call i32 @InnerTailCall(i32 %a)
  ret void
}









declare i32 @MustTailCall(i32 %a)

define i32 @CallMustTailCall(i32 %a) sanitize_memory {
  %b = musttail call i32 @MustTailCall(i32 %a)
  ret i32 %b
}










declare i32* @MismatchingMustTailCall(i32 %a)

define i8* @MismatchingCallMustTailCall(i32 %a) sanitize_memory {
  %b = musttail call i32* @MismatchingMustTailCall(i32 %a)
  %c = bitcast i32* %b to i8*
  ret i8* %c
}














