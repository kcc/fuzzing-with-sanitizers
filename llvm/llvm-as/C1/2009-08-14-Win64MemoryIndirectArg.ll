
target triple = "x86_64-mingw"


	%0 = type opaque		
	%1 = type opaque		

define internal fastcc float @computeMipmappingRho(%0* %shaderExecutionStatePtr, i32 %index, <4 x float> %texCoord, <4 x float> %texCoordDX, <4 x float> %texCoordDY) readonly {
indexCheckBlock:
	%indexCmp = icmp ugt i32 %index, 16		
	br i1 %indexCmp, label %zeroReturnBlock, label %primitiveTextureFetchBlock

primitiveTextureFetchBlock:		
	%pointerArithmeticTmp = bitcast %0* %shaderExecutionStatePtr to i8*		
	%pointerArithmeticTmp1 = getelementptr i8, i8* %pointerArithmeticTmp, i64 1808		
	%pointerArithmeticTmp2 = bitcast i8* %pointerArithmeticTmp1 to %1**		
	%primitivePtr = load %1*, %1** %pointerArithmeticTmp2		
	%pointerArithmeticTmp3 = bitcast %1* %primitivePtr to i8*		
	%pointerArithmeticTmp4 = getelementptr i8, i8* %pointerArithmeticTmp3, i64 19408		
	%pointerArithmeticTmp5 = bitcast i8* %pointerArithmeticTmp4 to %1**		
	%primitiveTexturePtr = getelementptr %1*, %1** %pointerArithmeticTmp5, i32 %index		
	%primitiveTexturePtr6 = load %1*, %1** %primitiveTexturePtr		
	br label %textureCheckBlock

textureCheckBlock:		
	%texturePtrInt = ptrtoint %1* %primitiveTexturePtr6 to i64		
	%testTextureNULL = icmp eq i64 %texturePtrInt, 0		
	br i1 %testTextureNULL, label %zeroReturnBlock, label %rhoCalculateBlock

rhoCalculateBlock:		
	%pointerArithmeticTmp7 = bitcast %1* %primitiveTexturePtr6 to i8*		
	%pointerArithmeticTmp8 = getelementptr i8, i8* %pointerArithmeticTmp7, i64 640		
	%pointerArithmeticTmp9 = bitcast i8* %pointerArithmeticTmp8 to <4 x float>*		
	%dimensionsPtr = load <4 x float>, <4 x float>* %pointerArithmeticTmp9, align 1		
	%texDiffDX = fsub <4 x float> %texCoordDX, %texCoord		
	%texDiffDY = fsub <4 x float> %texCoordDY, %texCoord		
	%ddx = fmul <4 x float> %texDiffDX, %dimensionsPtr		
	%ddx10 = fmul <4 x float> %texDiffDY, %dimensionsPtr		
	%ddxSquared = fmul <4 x float> %ddx, %ddx		
	%0 = shufflevector <4 x float> %ddxSquared, <4 x float> %ddxSquared, <4 x i32> <i32 1, i32 0, i32 0, i32 0>		
	%dxSquared = fadd <4 x float> %ddxSquared, %0		
	%1 = call <4 x float> @llvm.x86.sse.sqrt.ss(<4 x float> %dxSquared)		
	%ddySquared = fmul <4 x float> %ddx10, %ddx10		
	%2 = shufflevector <4 x float> %ddySquared, <4 x float> %ddySquared, <4 x i32> <i32 1, i32 0, i32 0, i32 0>		
	%dySquared = fadd <4 x float> %ddySquared, %2		
	%3 = call <4 x float> @llvm.x86.sse.sqrt.ss(<4 x float> %dySquared)		
	%4 = call <4 x float> @llvm.x86.sse.max.ss(<4 x float> %1, <4 x float> %3)		
	%rho = extractelement <4 x float> %4, i32 0		
	ret float %rho

zeroReturnBlock:		
	ret float 0.000000e+00
}

declare <4 x float> @llvm.x86.sse.sqrt.ss(<4 x float>) nounwind readnone

declare <4 x float> @llvm.x86.sse.max.ss(<4 x float>, <4 x float>) nounwind readnone
