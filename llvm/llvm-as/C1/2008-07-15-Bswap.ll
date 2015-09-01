
target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f128:64:128"
target triple = "powerpc-apple-darwin9"
	%struct.BiPartSrcDescriptor = type <{ %"struct.BiPartSrcDescriptor::$_105" }>
	%"struct.BiPartSrcDescriptor::$_105" = type { %struct.BiPartSrcDescriptor_NO_VECTOR_ALIGNMENT_size_is_16 }
	%struct.BiPartSrcDescriptor_NO_VECTOR_ALIGNMENT_size_is_16 = type { [2 x %struct.MotionVectors], [2 x i8], %struct.Map4x4ToPartIdx, [2 x i8], i8, i8 }
	%struct.Condv = type opaque
	%struct.DHBFLayerId = type { i8 }
	%struct.DecodeComplexityInfo = type { i32, i32, i32, i32, %"struct.DecodeComplexityInfo::IntraStats", %"struct.DecodeComplexityInfo::InterStats" }
	%"struct.DecodeComplexityInfo::InterStats" = type { i32, i32, i32, i32, [5 x i32], [3 x i32], [4 x [4 x i32]], [4 x i32], i32, %struct.MotionVectors, %struct.MotionVectors }
	%"struct.DecodeComplexityInfo::IntraStats" = type { i32, i32, i32, [5 x i32], [3 x i32], [4 x i32], [3 x i32] }
	%struct.DecodeComplexityOptions = type { i8, i8, i32, double, i8, float, i8, float, i8, i8, i8, i8, i8 }
	%struct.DescriptorAllocator = type { %struct.Mutex*, %struct.Mutex*, i8**, i32, i32, i8**, i32, i32, i8**, i32, i32 }
	%struct.DetailsFromSliceType = type <{ i8 }>
	%struct.FlatnessAnalysis = type { i16, i16, i32, i32*, i8*, [512 x i32], [256 x i32] }
	%struct.Frame = type <{ i8, i8, i8, i8, i8, [3 x i8], i32, i32, %struct.Mutex*, %struct.Condv*, [8 x i8], %struct.FramePixels, %struct.FrameMotionVectorCache, %struct.FrameIndex, i32, i8*, i8*, i8*, i8*, i16*, %struct.FlatnessAnalysis, %struct.NoiseAnalysis, %struct.VisualActivity, %struct.FrameMotionInfo, %struct.FrameMotionAnalysis, %struct.FrameDataRateParameters, %struct.FrameEncoderTags, %struct.DecodeComplexityInfo, %struct.DecodeComplexityOptions, %struct.MotionInfoFor16x16_FasterSP*, [1 x i32] }>
	%struct.FrameDataRateParameters = type { i32, float, i8, i8 }
	%struct.FrameEncoderTags = type { i8, i8, i32, i8, i8, float }
	%struct.FrameIndex = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, %struct.Frame*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.DHBFLayerId }
	%struct.FrameMotionAnalysis = type { i32, i32, i32, %struct.MoEstMotion16x16*, %struct.MbAnalysis*, i32, i32, i16, i16, i32, i32, i32, i32, i8, i8 }
	%struct.FrameMotionInfo = type { i32, i32, %struct.MoEstMbMotionInfo*, i32, i32, i32, i32, i32 }
	%struct.FrameMotionVectorCache = type <{ %struct.ThreadAllocator**, i32, i32, i32, %struct.BiPartSrcDescriptor, %struct.BiPartSrcDescriptor, %struct.BiPartSrcDescriptor, [3 x %struct.BiPartSrcDescriptor*], %struct.BiPartSrcDescriptor** }>
	%struct.FramePixels = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8*, i8*, i32, [4 x i8*], [4 x i8*], [2 x [4 x i32]], [2 x [4 x i32]], %struct.PixelData, %struct.InterpolationCache*, %struct.InterpolationCache*, %struct.InterpolationCache*, [16 x i16], [16 x i16], [12 x i8], %"struct.PortableSInt32Array<4>", %"struct.PortableSInt32Array<8>", %struct.ICOffsetArraysY, %struct.UVSrcOffsetEtcX_Struct*, i32*, i32*, [3 x i32] }>
	%struct.ICOffsetArraysY = type { [21 x i32], [21 x i32], [4 x [21 x i32]] }
	%struct.InterpolationCache = type opaque
	%struct.LoopFilterInfo = type { %struct.BiPartSrcDescriptor**, i32, i32, i32, i32, i32*, i32, %"struct.LoopFilterInfo::SliceInfoStruct"*, i32, %struct.Mutex*, i16*, %struct.FramePixels*, i8*, i8*, i8*, i8*, i8*, %struct.PerMacroblockBoundaryStrengths*, %struct.Mutex*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8*, i8*, i8, void (i8*, i8*, i32, i32, i32, i32, i32, i8*, i32)*, void (i8*, i8*, i32, i32, i32, i32, i32, i8*, i32, i8*)*, i32 }
	%"struct.LoopFilterInfo::SliceInfoStruct" = type { %"struct.LoopFilterInfo::SliceInfoStruct::LFDisableStats", i8, i8, i8, i8, [17 x %struct.Frame*], [17 x %struct.Frame*] }
	%"struct.LoopFilterInfo::SliceInfoStruct::LFDisableStats" = type { i32, i32 }
	%struct.LoopFilterParam = type { i32, %struct.LoopFilterInfo*, %struct.FramePixels*, %struct.FrameMotionVectorCache* }
	%struct.Map4x4ToPartIdx = type { i16 }
	%struct.MbAnalysis = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.RdCost, %struct.RdCost, i32 }
	%struct.MoEstMbMotionInfo = type { i32, i32, i32, i32, [16 x %struct.MoEstPartMotionInfo] }
	%struct.MoEstMotion16x16 = type { [2 x i8], [2 x %struct.MotionVectors], i8, [3 x %struct.MoEstPredCost] }
	%struct.MoEstPartMotionInfo = type { i32, %struct.PartGeom, i32, i32, [2 x %struct.MotionVectors], [2 x i8], i16 }
	%struct.MoEstPredCost = type { i32, i16, i16 }
	%struct.MotionInfoFor16x16_FasterSP = type { [2 x %struct.MotionVectors], [2 x i8], i8, [2 x i32], i32, i32 }
	%struct.MotionVectors = type { %"struct.MotionVectors::$_103" }
	%"struct.MotionVectors::$_103" = type { i32 }
	%struct.Mutex = type opaque
	%struct.NoiseAnalysis = type { i16, i16, i32, i8*, i8*, i8*, [512 x i32] }
	%struct.PartGeom = type { %struct.Map4x4ToPartIdx }
	%struct.PerMacroblockBoundaryStrengths = type { [16 x i8], [16 x i8], [4 x i8], [4 x i8], [2 x i32] }
	%struct.PixelData = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
	%"struct.PortableSInt32Array<4>" = type { [4 x i32] }
	%"struct.PortableSInt32Array<8>" = type { [8 x i32] }
	%struct.RdCost = type { i32, i32, i32, double }
	%struct.ThreadAllocator = type { %struct.DescriptorAllocator*, %struct.BiPartSrcDescriptor*, [256 x %struct.BiPartSrcDescriptor*], i32, i32, i32 }
	%struct.ThreadedBatch = type opaque
	%struct.UVSrcOffsetEtcX_Struct = type <{ i16 }>
	%struct.VisualActivity = type { i16, i16, i32, i32, i32*, i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i8*, i32, [2 x i32], i32, i32, i32, i16*, i16, i16, i16, i16, float, i8*, i32*, i32, i32, i8 }
@_ZL33table_8_14_indexA_to_alpha_scalar = external constant [64 x i8]		
@_ZL32table_8_14_indexB_to_beta_scalar = external constant [64 x i8]		
@_ZL34table_8_15_indexA_bS_to_tc0_scalar = external constant [64 x [4 x i8]]		
@gkDummy = external global i32		
@gkDetailsFromSliceTypeArray = external constant [10 x %struct.DetailsFromSliceType]		

declare i32 @_Z20LoopFilter_ConstructP14LoopFilterInfojj(%struct.LoopFilterInfo*, i32, i32)

declare i32 @_Z25LF_Threading2_assert_doneP14LoopFilterInfo(%struct.LoopFilterInfo*) nounwind 

declare i32 @_Z54S_CalcIfLargeMVDeltaForBMbBothPredictionsFromSameFramePK19BiPartSrcDescriptorS1_ijj(%struct.BiPartSrcDescriptor*, %struct.BiPartSrcDescriptor*, i32, i32, i32) nounwind 

declare void @_Z30LoopFilter_Internal_FilterLumaPhiiiiii(i8*, i32, i32, i32, i32, i32, i32) nounwind 

declare void @_Z33LoopFilter_Internal_FilterChromaVPhiiiiiiiiii(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) nounwind 

declare void @_Z33LoopFilter_Internal_FilterChromaHPhiiiiii(i8*, i32, i32, i32, i32, i32, i32) nounwind 

declare void @_Z42LoopFilter_Internal_filter_macroblock_lumaPK14LoopFilterInfoPhS2_iiiPK30PerMacroblockBoundaryStrengthsjj(%struct.LoopFilterInfo*, i8*, i8*, i32, i32, i32, %struct.PerMacroblockBoundaryStrengths*, i32, i32) nounwind 

declare void @llvm.memcpy.i32(i8*, i8*, i32, i32) nounwind 

declare i32 @_Z40LoopFilter_Internal_FilterLumaPlaneMBAFFPK14LoopFilterInfojjj(%struct.LoopFilterInfo*, i32, i32, i32) nounwind 

declare void @_Z18LoopFilter_DestroyP14LoopFilterInfo(%struct.LoopFilterInfo*)

declare void @MutexDispose(%struct.Mutex*)

declare void @_ZdaPv(i8*) nounwind 

declare void @jvtDisposePTRVectorAligned(i8*)

declare void @jvtDisposePTR(i8*)

declare void @jvtDisposePTRMemAligned(i8*)

declare void @_Z31LoopFilter_Internal_ResetTablesP14LoopFilterInfo(%struct.LoopFilterInfo*) nounwind 

declare void @llvm.memset.i32(i8*, i8, i32, i32) nounwind 

define i32 @_Z60LoopFilter_Internal_CalculateBoundaryStrengths_MbaffFramePicPK14LoopFilterInfoP22FrameMotionVectorCachejj(%struct.LoopFilterInfo* %lfiPtr, %struct.FrameMotionVectorCache* %frameMotionVectorCachePtr, i32 %mbY_min, i32 %mbY_maxPlus1) nounwind  {
entry:
	icmp ult i32 %mbY_min, %mbY_maxPlus1		
	br i1 %0, label %bb16, label %bb642

bb16:		
	bitcast %struct.PerMacroblockBoundaryStrengths* null to i32*		
	getelementptr i32, i32* %1, i32 1		
	getelementptr i32, i32* %1, i32 2		
	getelementptr i32, i32* %1, i32 3		
	bitcast [16 x i8]* null to i32*		
	getelementptr i32, i32* %5, i32 1		
	getelementptr i32, i32* %5, i32 2		
	getelementptr i32, i32* %5, i32 3		
	icmp eq i32 0, 0		
	lshr i32 0, 30		
	and i32 0, 268435455		
	lshr i32 0, 28		
	and i32 %12, 3		
	and i32 0, 1		
	icmp eq i32 %14, 0		
	zext i8 0 to i32		
	%.not656 = icmp ne i32 0, 0		
	icmp eq i8 0, 0		
	trunc i32 0 to i8		
	add i32 0, 1		
	%.not658 = icmp ne i32 0, 0		
	and i32 0, 268369920		
	icmp eq i32 %20, 268369920		
	getelementptr %struct.PerMacroblockBoundaryStrengths, %struct.PerMacroblockBoundaryStrengths* null, i32 0, i32 2		
	getelementptr %struct.PerMacroblockBoundaryStrengths, %struct.PerMacroblockBoundaryStrengths* null, i32 0, i32 2, i32 0		
	and i32 0, -2		
	add i32 %24, -1		
	bitcast [4 x i8]* %22 to i32*		
	getelementptr i32, i32* %26, i32 1		
	getelementptr i32, i32* %26, i32 2		
	getelementptr i32, i32* %26, i32 3		
	br label %bb144

bb144:		
	%idxEachField11.0773 = phi i32 [ 0, %bb16 ], [ %162, %bb395 ]		
	%mbYLeft.2776 = phi i32 [ 0, %bb16 ], [ %mbYLeft.2776, %bb395 ]		
	%mbXYLeft.2775 = phi i32 [ 0, %bb16 ], [ %mbXYLeft.2775, %bb395 ]		
	%mixedModeLeftEdgeOfMbFlag.2774 = phi i32 [ 0, %bb16 ], [ 0, %bb395 ]		
	%mbIndexLeft.2772 = phi i32 [ 0, %bb16 ], [ %mbIndexLeft.2772, %bb395 ]		
	%boundaryStrengthsV.1771 = phi i8* [ null, %bb16 ], [ %158, %bb395 ]		
	%numEdgesToTest.1770 = phi i32 [ 4, %bb16 ], [ %numEdgesToTest.2, %bb395 ]		
	icmp eq i32 %idxEachField11.0773, 0		
	getelementptr %struct.BiPartSrcDescriptor*, %struct.BiPartSrcDescriptor** null, i32 %mbIndexLeft.2772		
	load %struct.BiPartSrcDescriptor*, %struct.BiPartSrcDescriptor** %31, align 4		
	%fMacroblockHasNonZeroBS.4 = select i1 %21, i32 1, i32 0		
	%numEdgesToTest.2 = select i1 %21, i32 1, i32 %numEdgesToTest.1770		
	store i8 32, i8* %boundaryStrengthsV.1771, align 1
	br label %labelContinueEdgesLoopV

bb200:		
	lshr i32 %159, 28		
	and i32 %160, %16		
	icmp eq i32 %34, 0		
	icmp eq i32 %160, 0		
	zext i1 %36 to i32		
	or i32 %37, -1		
	or i32 %38, %33		
	icmp eq i32 %39, 0		
	br i1 %40, label %bb205, label %bb206

bb205:		
	store i8 32, i8* %158, align 1
	br label %labelContinueEdgesLoopV

bb206:		
	icmp eq i32 %33, 15		
	br i1 %41, label %labelContinueEdgesLoopV, label %bb210.preheader

bb210.preheader:		
	add i32 %160, 0		
	%bothcond657 = and i1 %36, %.not656		
	shl i32 %idxEachField11.0773, 1		
	add i32 %43, 0		
	shl i32 %mbYLeft.2776, 2		
	add i32 %42, -1		
	icmp eq i32 0, 0		
	%brmerge689.not = and i1 %47, false		
	%bothcond659 = and i1 %36, %.not658		
	shl i32 %mbYLeft.2776, 1		
	or i32 %48, 0		
	shl i32 %49, 1		
	add i32 0, 0		
	mul i32 %51, 0		
	add i32 %52, %42		
	mul i32 %51, 0		
	add i32 %46, %54		
	getelementptr %struct.BiPartSrcDescriptor*, %struct.BiPartSrcDescriptor** null, i32 %53		
	load %struct.BiPartSrcDescriptor*, %struct.BiPartSrcDescriptor** %56, align 4		
	getelementptr %struct.BiPartSrcDescriptor*, %struct.BiPartSrcDescriptor** null, i32 %55		
	load %struct.BiPartSrcDescriptor*, %struct.BiPartSrcDescriptor** %58, align 4		
	icmp slt i32 %159, 0		
	icmp eq %struct.BiPartSrcDescriptor* %57, %59		
	bitcast %struct.BiPartSrcDescriptor* %57 to i16*		
	load i16, i16* %62, align 2		
	getelementptr i16, i16* %62, i32 1		
	load i16, i16* %64, align 2		
	getelementptr i16, i16* %62, i32 2		
	load i16, i16* %66, align 2		
	getelementptr i16, i16* %62, i32 3		
	load i16, i16* %68, align 2		
	getelementptr i16, i16* %62, i32 6		
	load i16, i16* %70, align 2		
	bitcast %struct.BiPartSrcDescriptor* %59 to i16*		
	load i16, i16* %72, align 2		
	getelementptr i16, i16* %72, i32 1		
	load i16, i16* %74, align 2		
	getelementptr i16, i16* %72, i32 2		
	load i16, i16* %76, align 2		
	getelementptr i16, i16* %72, i32 3		
	load i16, i16* %78, align 2		
	getelementptr i16, i16* %72, i32 6		
	load i16, i16* %80, align 2		
	sub i16 %63, %73		
	sub i16 %65, %75		
	sub i16 %67, %77		
	sub i16 %69, %79		
	sub i16 %71, %81		
	sub i16 0, %82		
	icmp slt i16 %82, 0		
	%. = select i1 %88, i16 %87, i16 %82		
	sub i16 0, %83		
	icmp slt i16 %83, 0		
	%.660 = select i1 %90, i16 %89, i16 %83		
	sub i16 0, %84		
	icmp slt i16 %84, 0		
	%.661 = select i1 %92, i16 %91, i16 %84		
	sub i16 0, %85		
	icmp slt i16 %85, 0		
	%.662 = select i1 %94, i16 %93, i16 %85		
	sub i16 0, %86		
	icmp slt i16 %86, 0		
	%.663 = select i1 %96, i16 %95, i16 %86		
	getelementptr %struct.BiPartSrcDescriptor, %struct.BiPartSrcDescriptor* %57, i32 0, i32 0, i32 0, i32 1, i32 0		
	load i8, i8* %97, align 1		
	zext i8 %98 to i32		
	getelementptr %struct.BiPartSrcDescriptor, %struct.BiPartSrcDescriptor* %57, i32 0, i32 0, i32 0, i32 1, i32 1		
	load i8, i8* %100, align 1		
	zext i8 %101 to i32		
	getelementptr %struct.BiPartSrcDescriptor, %struct.BiPartSrcDescriptor* %57, i32 0, i32 0, i32 0, i32 3, i32 0		
	load i8, i8* %103, align 1		
	zext i8 %104 to i32		
	getelementptr %struct.BiPartSrcDescriptor, %struct.BiPartSrcDescriptor* %59, i32 0, i32 0, i32 0, i32 3, i32 0		
	load i8, i8* %106, align 1		
	zext i8 %107 to i32		
	getelementptr %struct.BiPartSrcDescriptor, %struct.BiPartSrcDescriptor* %57, i32 0, i32 0, i32 0, i32 3, i32 1		
	load i8, i8* %109, align 1		
	zext i8 %110 to i32		
	getelementptr %struct.BiPartSrcDescriptor, %struct.BiPartSrcDescriptor* %59, i32 0, i32 0, i32 0, i32 3, i32 1		
	load i8, i8* %112, align 1		
	zext i8 %113 to i32		
	lshr i32 %99, 4		
	and i32 %115, 2		
	lshr i32 %102, 5		
	or i32 %116, %117		
	icmp eq i32 %118, 0		
	icmp eq i32 %118, 1		
	br i1 %120, label %bb297, label %bb298

bb297:		
	br label %bb298

bb298:		
	%vu8Mask_0.1 = phi i8 [ -1, %bb297 ], [ 0, %bb210.preheader ]		
	%vu8Mask_1.1 = phi i8 [ -1, %bb297 ], [ 0, %bb210.preheader ]		
	%vu8Mask_2.1 = phi i8 [ -1, %bb297 ], [ 0, %bb210.preheader ]		
	%vu8Mask_3.1 = phi i8 [ -1, %bb297 ], [ 0, %bb210.preheader ]		
	%vu8Mask_4.1 = phi i8 [ 0, %bb297 ], [ 0, %bb210.preheader ]		
	%vu8Mask_5.1 = phi i8 [ 0, %bb297 ], [ 0, %bb210.preheader ]		
	%vu8Mask_6.1 = phi i8 [ 0, %bb297 ], [ 0, %bb210.preheader ]		
	%vu8Mask_7.1 = phi i8 [ 0, %bb297 ], [ 0, %bb210.preheader ]		
	%vu8Mask_12.1 = phi i8 [ -1, %bb297 ], [ 0, %bb210.preheader ]		
	%vu8Mask_13.1 = phi i8 [ -1, %bb297 ], [ 0, %bb210.preheader ]		
	icmp eq i32 %118, 2		
	and i8 %vu8Mask_1.1, 3		
	and i8 %vu8Mask_5.1, 3		
	and i8 %vu8Mask_3.1, %18		
	and i8 %vu8Mask_7.1, %18		
	icmp eq i8 %104, %107		
	br i1 %126, label %bb328, label %bb303

bb303:		
	call i16 @llvm.bswap.i16( i16 %81 )		
	sub i16 %63, %77		
	sub i16 %65, %79		
	sub i16 %67, %73		
	sub i16 %69, %75		
	sub i16 %71, %127		
	sub i16 0, %128		
	icmp slt i16 %128, 0		
	%.673 = select i1 %134, i16 %133, i16 %128		
	sub i16 0, %129		
	icmp slt i16 %129, 0		
	%.674 = select i1 %136, i16 %135, i16 %129		
	sub i16 0, %130		
	icmp slt i16 %130, 0		
	%.675 = select i1 %138, i16 %137, i16 %130		
	sub i16 0, %131		
	icmp slt i16 %131, 0		
	%.676 = select i1 %140, i16 %139, i16 %131		
	sub i16 0, %132		
	icmp slt i16 %132, 0		
	%.677 = select i1 %142, i16 %141, i16 %132		
	br label %bb328

bb328:		
	%vu16Delta_0.0 = phi i16 [ %.673, %bb303 ], [ %., %bb298 ]		
	%vu16Delta_1.0 = phi i16 [ %.674, %bb303 ], [ %.660, %bb298 ]		
	%vu16Delta_2.0 = phi i16 [ %.675, %bb303 ], [ %.661, %bb298 ]		
	%vu16Delta_3.0 = phi i16 [ %.676, %bb303 ], [ %.662, %bb298 ]		
	%vu16Delta_6.0 = phi i16 [ %.677, %bb303 ], [ %.663, %bb298 ]		
	lshr i16 %vu16Delta_0.0, 8		
	trunc i16 %143 to i8		
	and i8 %144, %vu8Mask_0.1		
	icmp eq i8 %145, 0		
	sub i32 %105, %114		
	sub i32 %111, %108		
	or i32 %147, %148		
	icmp eq i32 %149, 0		
	call i32 @_Z54S_CalcIfLargeMVDeltaForBMbBothPredictionsFromSameFramePK19BiPartSrcDescriptorS1_ijj( %struct.BiPartSrcDescriptor* %57, %struct.BiPartSrcDescriptor* %59, i32 %19, i32 0, i32 0 ) nounwind 		
	unreachable

labelContinueEdgesLoopV:		
	%fEdgeHasNonZeroBS.0 = phi i32 [ 0, %bb205 ], [ 0, %bb144 ], [ 1, %bb206 ]		
	%fMacroblockHasNonZeroBS.6 = phi i32 [ %152, %bb205 ], [ %fMacroblockHasNonZeroBS.4, %bb144 ], [ %152, %bb206 ]		
	%ixEdge.1 = phi i32 [ %160, %bb205 ], [ 0, %bb144 ], [ %160, %bb206 ]		
	%bfNZ12.2 = phi i32 [ %159, %bb205 ], [ 0, %bb144 ], [ %159, %bb206 ]		
	%boundaryStrengthsV.3 = phi i8* [ %158, %bb205 ], [ %boundaryStrengthsV.1771, %bb144 ], [ %158, %bb206 ]		
	or i32 %fMacroblockHasNonZeroBS.6, %fEdgeHasNonZeroBS.0		
	load i8, i8* %boundaryStrengthsV.3, align 1		
	trunc i32 %fEdgeHasNonZeroBS.0 to i8		
	shl i8 %154, 5		
	xor i8 %155, 32		
	or i8 %153, %156		
	store i8 %157, i8* %boundaryStrengthsV.3, align 1
	getelementptr i8, i8* %boundaryStrengthsV.3, i32 4		
	shl i32 %bfNZ12.2, 4		
	add i32 %ixEdge.1, 1		
	icmp ult i32 %160, %numEdgesToTest.2		
	br i1 %161, label %bb200, label %bb395

bb395:		
	add i32 %idxEachField11.0773, 1		
	icmp ugt i32 %162, 0		
	br i1 %163, label %bb398, label %bb144

bb398:		
	call void asm sideeffect "dcbt $0, $1", "b%,r,~{memory}"( i32 19, i32* null ) nounwind 
	unreachable

bb642:		
	ret i32 0
}

declare i16 @llvm.bswap.i16(i16) nounwind readnone 

declare i8* @jvtNewPtrVectorAligned(i32)

declare i8* @jvtNewPtr(i32)

declare i8* @jvtNewPtrMemAligned(i32)

declare %struct.Mutex* @MutexNew()

declare i8* @_Znam(i32)

declare i32 @_Z24LoopFilter_FilterMbGroupP14LoopFilterInfoP11FramePixelsP22FrameMotionVectorCacheP19ThreadedBatchStructjjij(%struct.LoopFilterInfo*, %struct.FramePixels*, %struct.FrameMotionVectorCache*, %struct.ThreadedBatch*, i32, i32, i32, i32)

declare void @MutexLock(%struct.Mutex*)

declare void @MutexUnlock(%struct.Mutex*)

declare i32 @_Z35LoopFilter_Internal_FilterLumaPlanePK14LoopFilterInfojjjjj(%struct.LoopFilterInfo*, i32, i32, i32, i32, i32)

declare i32 @_Z37LoopFilter_Internal_FilterChromaPlanePK14LoopFilterInfojjjjj(%struct.LoopFilterInfo*, i32, i32, i32, i32, i32)

declare void @_Z44LoopFilter_Internal_filter_macroblock_chromaPK14LoopFilterInfoPhS2_iiiPK30PerMacroblockBoundaryStrengthsjj(%struct.LoopFilterInfo*, i8*, i8*, i32, i32, i32, %struct.PerMacroblockBoundaryStrengths*, i32, i32) nounwind 

declare i32 @_Z42LoopFilter_Internal_FilterChromaPlaneMBAFFPK14LoopFilterInfojjj(%struct.LoopFilterInfo*, i32, i32, i32) nounwind 

declare i32 @_Z26LF_Threading2_ProcessTasksP14LoopFilterInfoP11FramePixelsP22FrameMotionVectorCacheij(%struct.LoopFilterInfo*, %struct.FramePixels*, %struct.FrameMotionVectorCache*, i32, i32)

declare i32 @_Z46LoopFilter_Internal_CalculateBoundaryStrengthsPK14LoopFilterInfoP22FrameMotionVectorCachejj(%struct.LoopFilterInfo*, %struct.FrameMotionVectorCache*, i32, i32)

declare i32 @_Z44LoopFilter_Internal_FilterLumaChromaPlane_PPP14LoopFilterInfojjjjj(%struct.LoopFilterInfo*, i32, i32, i32, i32, i32)

declare i32 @_Z22LoopFilter_FilterFrameP14LoopFilterInfoP11FramePixelsP22FrameMotionVectorCacheP19ThreadedBatchStructij(%struct.LoopFilterInfo*, %struct.FramePixels*, %struct.FrameMotionVectorCache*, %struct.ThreadedBatch*, i32, i32)

declare void @_Z34LF_Threading2_ProcessTasks_WrapperPv(i8*)

declare void @llvm.memset.i64(i8*, i8, i64, i32) nounwind 
