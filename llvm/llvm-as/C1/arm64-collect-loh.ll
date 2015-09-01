







@a = internal unnamed_addr global i32 0, align 4
@b = external global i32


define void @foo(i32 %t) {
entry:
  %tmp = load i32, i32* @a, align 4
  %add = add nsw i32 %tmp, %t
  store i32 %add, i32* @a, align 4
  ret void
}









define i32 @test(i32 %t) {
entry:
  %cmp = icmp sgt i32 %t, 5
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          
  %tmp = load i32, i32* @a, align 4
  %add = add nsw i32 %tmp, %t
  %cmp1 = icmp sgt i32 %add, 12
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         
  tail call void @foo(i32 %add)
  %tmp1 = load i32, i32* @a, align 4
  br label %if.end4

if.end4:                                          
  %t.addr.0 = phi i32 [ %tmp1, %if.then2 ], [ %t, %if.then ], [ %t, %entry ]
  %tmp2 = load i32, i32* @b, align 4
  %add5 = add nsw i32 %tmp2, %t.addr.0
  tail call void @foo(i32 %add5)
  %tmp3 = load i32, i32* @b, align 4
  %add6 = add nsw i32 %tmp3, %t.addr.0
  ret i32 %add6
}

@C = common global i32 0, align 4












define i32 @getC() {
  %res = load i32, i32* @C, align 4
  ret i32 %res
}












define i64 @getSExtC() {
  %res = load i32, i32* @C, align 4
  %sextres = sext i32 %res to i64
  ret i64 %sextres
}














define void @getSeveralC(i32 %t) {
entry:
  %tmp = load i32, i32* @C, align 4
  %add = add nsw i32 %tmp, %t
  store i32 %add, i32* @C, align 4
  ret void
}












define void @setC(i32 %t) {
entry:
  store i32 %t, i32* @C, align 4
  ret void
}




@InternalC = internal global i32 0, align 4












define i32 @getInternalCPlus4() {
  %addr = getelementptr i32, i32* @InternalC, i32 4
  %res = load i32, i32* %addr, align 4
  ret i32 %res
}












define i64 @getSExtInternalCPlus4() {
  %addr = getelementptr i32, i32* @InternalC, i32 4
  %res = load i32, i32* %addr, align 4
  %sextres = sext i32 %res to i64
  ret i64 %sextres
}














define void @getSeveralInternalCPlus4(i32 %t) {
entry:
  %addr = getelementptr i32, i32* @InternalC, i32 4
  %tmp = load i32, i32* %addr, align 4
  %add = add nsw i32 %tmp, %t
  store i32 %add, i32* %addr, align 4
  ret void
}












define void @setInternalCPlus4(i32 %t) {
entry:
  %addr = getelementptr i32, i32* @InternalC, i32 4
  store i32 %t, i32* %addr, align 4
  ret void
}










define i32 @getInternalC() {
  %res = load i32, i32* @InternalC, align 4
  ret i32 %res
}










define i64 @getSExtInternalC() {
  %res = load i32, i32* @InternalC, align 4
  %sextres = sext i32 %res to i64
  ret i64 %sextres
}











define void @getSeveralInternalC(i32 %t) {
entry:
  %tmp = load i32, i32* @InternalC, align 4
  %add = add nsw i32 %tmp, %t
  store i32 %add, i32* @InternalC, align 4
  ret void
}









define void @setInternalC(i32 %t) {
entry:
  store i32 %t, i32* @InternalC, align 4
  ret void
}



@D = common global i8 0, align 4











define i8 @getD() {
  %res = load i8, i8* @D, align 4
  ret i8 %res
}










define void @setD(i8 %t) {
  store i8 %t, i8* @D, align 4
  ret void
}












define i32 @getSExtD() {
  %res = load i8, i8* @D, align 4
  %sextres = sext i8 %res to i32
  ret i32 %sextres
}












define i64 @getSExt64D() {
  %res = load i8, i8* @D, align 4
  %sextres = sext i8 %res to i64
  ret i64 %sextres
}

@E = common global i16 0, align 4











define i16 @getE() {
  %res = load i16, i16* @E, align 4
  ret i16 %res
}












define i32 @getSExtE() {
  %res = load i16, i16* @E, align 4
  %sextres = sext i16 %res to i32
  ret i32 %sextres
}










define void @setE(i16 %t) {
  store i16 %t, i16* @E, align 4
  ret void
}












define i64 @getSExt64E() {
  %res = load i16, i16* @E, align 4
  %sextres = sext i16 %res to i64
  ret i64 %sextres
}

@F = common global i64 0, align 4












define i64 @getF() {
  %res = load i64, i64* @F, align 4
  ret i64 %res
}










define void @setF(i64 %t) {
  store i64 %t, i64* @F, align 4
  ret void
}

@G = common global float 0.0, align 4












define float @getG() {
  %res = load float, float* @G, align 4
  ret float %res
}










define void @setG(float %t) {
  store float %t, float* @G, align 4
  ret void
}

@H = common global half 0.0, align 4












define half @getH() {
  %res = load half, half* @H, align 4
  ret half %res
}










define void @setH(half %t) {
  store half %t, half* @H, align 4
  ret void
}

@I = common global double 0.0, align 4












define double @getI() {
  %res = load double, double* @I, align 4
  ret double %res
}










define void @setI(double %t) {
  store double %t, double* @I, align 4
  ret void
}

@J = common global <2 x i32> <i32 0, i32 0>, align 4












define <2 x i32> @getJ() {
  %res = load <2 x i32>, <2 x i32>* @J, align 4
  ret <2 x i32> %res
}










define void @setJ(<2 x i32> %t) {
  store <2 x i32> %t, <2 x i32>* @J, align 4
  ret void
}

@K = common global <4 x i32> <i32 0, i32 0, i32 0, i32 0>, align 4












define <4 x i32> @getK() {
  %res = load <4 x i32>, <4 x i32>* @K, align 4
  ret <4 x i32> %res
}










define void @setK(<4 x i32> %t) {
  store <4 x i32> %t, <4 x i32>* @K, align 4
  ret void
}

@L = common global <1 x i8> <i8 0>, align 4












define <1 x i8> @getL() {
  %res = load <1 x i8>, <1 x i8>* @L, align 4
  ret <1 x i8> %res
}











define void @setL(<1 x i8> %t) {
  store <1 x i8> %t, <1 x i8>* @L, align 4
  ret void
}















define void @uninterestingSub(i8* nocapture %row) #0 {
  %tmp = bitcast i8* %row to <16 x i8>*
  %tmp1 = load <16 x i8>, <16 x i8>* %tmp, align 16
  %vext43 = shufflevector <16 x i8> <i8 undef, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %tmp1, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %add.i.414 = add <16 x i8> zeroinitializer, %vext43
  store <16 x i8> %add.i.414, <16 x i8>* %tmp, align 16
  %add.ptr51 = getelementptr inbounds i8, i8* %row, i64 16
  %tmp2 = bitcast i8* %add.ptr51 to <16 x i8>*
  %tmp3 = load <16 x i8>, <16 x i8>* %tmp2, align 16
  %tmp4 = bitcast i8* undef to <16 x i8>*
  %tmp5 = load <16 x i8>, <16 x i8>* %tmp4, align 16
  %vext157 = shufflevector <16 x i8> %tmp3, <16 x i8> %tmp5, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %add.i.402 = add <16 x i8> zeroinitializer, %vext157
  store <16 x i8> %add.i.402, <16 x i8>* %tmp4, align 16
  ret void
}

attributes #0 = { "target-cpu"="cyclone" }
