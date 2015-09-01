











define void @foo(i8* %p, i32* %q) {
entry:
  %t = load i8, i8* %p
  %a = icmp slt i8 %t, 20
  br i1 %a, label %true, label %false
true:
  %s = zext i8 %t to i32
  store i32 %s, i32* %q
  ret void
false:
  ret void
}












define void @promoteOneArg(i8* %p, i32* %q) {
entry:
  %t = load i8, i8* %p
  %add = add nuw i8 %t, 2
  %a = icmp slt i8 %t, 20
  br i1 %a, label %true, label %false
true:
  %s = zext i8 %add to i32
  store i32 %s, i32* %q
  ret void
false:
  ret void
}












define void @promoteOneArgSExt(i8* %p, i32* %q) {
entry:
  %t = load i8, i8* %p
  %add = add nsw i8 %t, 2
  %a = icmp slt i8 %t, 20
  br i1 %a, label %true, label %false
true:
  %s = sext i8 %add to i32
  store i32 %s, i32* %q
  ret void
false:
  ret void
}


























define void @promoteTwoArgZext(i8* %p, i32* %q, i8 %b) {
entry:
  %t = load i8, i8* %p
  %add = add nuw i8 %t, %b
  %a = icmp slt i8 %t, 20
  br i1 %a, label %true, label %false
true:
  %s = zext i8 %add to i32
  store i32 %s, i32* %q
  ret void
false:
  ret void
}


















define void @promoteTwoArgSExt(i8* %p, i32* %q, i8 %b) {
entry:
  %t = load i8, i8* %p
  %add = add nsw i8 %t, %b
  %a = icmp slt i8 %t, 20
  br i1 %a, label %true, label %false
true:
  %s = sext i8 %add to i32
  store i32 %s, i32* %q
  ret void
false:
  ret void
}






















define void @promoteThreeArgZext(i8* %p, i32* %q, i8 %b, i8 %c) {
entry:
  %t = load i8, i8* %p
  %tmp = add nuw i8 %t, %b
  %add = add nuw i8 %tmp, %c
  %a = icmp slt i8 %t, 20
  br i1 %a, label %true, label %false
true:
  %s = zext i8 %add to i32
  store i32 %s, i32* %q
  ret void
false:
  ret void
}




















define void @promoteMergeExtArgZExt(i8* %p, i32* %q, i16 %b) {
entry:
  %t = load i8, i8* %p
  %ext = zext i8 %t to i16
  %add = add nuw i16 %ext, %b
  %a = icmp slt i8 %t, 20
  br i1 %a, label %true, label %false
true:
  %s = zext i16 %add to i32
  store i32 %s, i32* %q
  ret void
false:
  ret void
}




















define void @promoteMergeExtArgSExt(i8* %p, i32* %q, i16 %b) {
entry:
  %t = load i8, i8* %p
  %ext = zext i8 %t to i16
  %add = add nsw i16 %ext, %b
  %a = icmp slt i8 %t, 20
  br i1 %a, label %true, label %false
true:
  %s = sext i16 %add to i32
  store i32 %s, i32* %q
  ret void
false:
  ret void
}























































define void @severalPromotions(i8* %addr1, i32* %addr2, i8 %a, i32 %b) {
  %ld = load i8, i8* %addr1
  %zextld = zext i8 %ld to i32
  %ld2 = load i32, i32* %addr2
  %add = add nsw i32 %ld2, %zextld
  %sextadd = sext i32 %add to i64
  %zexta = zext i8 %a to i32
  %addza = add nsw i32 %zexta, %zextld
  %sextaddza = sext i32 %addza to i64
  %addb = add nsw i32 %b, %zextld
  %sextaddb = sext i32 %addb to i64
  call void @dummy(i64 %sextadd, i64 %sextaddza, i64 %sextaddb)
  ret void
}

declare void @dummy(i64, i64, i64)







define void @vectorPromotion() {
entry:
  %a = shl nuw nsw <2 x i32> zeroinitializer, <i32 8, i32 8>
  %b = zext <2 x i32> %a to <2 x i64>
  ret void
}

@a = common global i32 0, align 4
@c = common global [2 x i32] zeroinitializer, align 4














define i32 @promotionOfArgEndsUpInValue(i16* %addr) {
entry:
  %val = load i16, i16* %addr
  %add = add nuw nsw i16 %val, zext (i1 icmp ne (i32* getelementptr inbounds ([2 x i32], [2 x i32]* @c, i64 0, i64 1), i32* @a) to i16)
  %conv3 = sext i16 %add to i32
  ret i32 %conv3
}




















define void @promoteTwoArgZextWithSourceExtendedTwice(i8* %p, i64* %q, i32 %b, i32* %addr) {
entry:
  %t = load i8, i8* %p
  %zextt = zext i8 %t to i32
  %add = add nuw i32 %zextt, %b
  %add2 = add nuw i32 %zextt, 12
  store i32 %add, i32 *%addr
  %s = zext i32 %add2 to i64
  store i64 %s, i64* %q
  ret void
}
























define void @doNotPromoteFreeSExtFromAddrMode(i8* %p, i32 %b, i32* %addr) {
entry:
  %t = load i8, i8* %p
  %zextt = zext i8 %t to i32
  %add = add nsw i32 %zextt, %b
  %idx64 = sext i32 %add to i64
  %staddr = getelementptr inbounds i32, i32* %addr, i64 %idx64
  store i32 %add, i32 *%staddr
  ret void
}























define void @doNotPromoteFreeSExtFromAddrMode64(i8* %p, i32 %b, i64* %addr, i64 %stuff) {
entry:
  %t = load i8, i8* %p
  %zextt = zext i8 %t to i32
  %add = add nsw i32 %zextt, %b
  %idx64 = sext i32 %add to i64
  %staddr = getelementptr inbounds i64, i64* %addr, i64 %idx64
  store i64 %stuff, i64 *%staddr
  ret void
}























define void @doNotPromoteFreeSExtFromAddrMode128(i8* %p, i32 %b, i128* %addr, i128 %stuff) {
entry:
  %t = load i8, i8* %p
  %zextt = zext i8 %t to i32
  %add = add nsw i32 %zextt, %b
  %idx64 = sext i32 %add to i64
  %staddr = getelementptr inbounds i128, i128* %addr, i64 %idx64
  store i128 %stuff, i128 *%staddr
  ret void
}




















define void @promoteSExtFromAddrMode256(i8* %p, i32 %b, i256* %addr, i256 %stuff) {
entry:
  %t = load i8, i8* %p
  %zextt = zext i8 %t to i32
  %add = add nsw i32 %zextt, %b
  %idx64 = sext i32 %add to i64
  %staddr = getelementptr inbounds i256, i256* %addr, i64 %idx64
  store i256 %stuff, i256 *%staddr
  ret void
}

























define void @doNotPromoteFreeZExtFromAddrMode(i8* %p, i32 %b, i32* %addr) {
entry:
  %t = load i8, i8* %p
  %zextt = zext i8 %t to i32
  %add = add nuw i32 %zextt, %b
  %idx64 = zext i32 %add to i64
  %staddr = getelementptr inbounds i32, i32* %addr, i64 %idx64
  store i32 %add, i32 *%staddr
  ret void
}


















define i64 @doNotPromoteFreeSExtFromShift(i8* %p, i32 %b) {
entry:
  %t = load i8, i8* %p
  %zextt = zext i8 %t to i32
  %add = add nsw i32 %zextt, %b
  %idx64 = sext i32 %add to i64
  %staddr = shl i64 %idx64, 12
  ret i64 %staddr
}
















define i64 @doNotPromoteFreeZExtFromShift(i8* %p, i32 %b) {
entry:
  %t = load i8, i8* %p
  %zextt = zext i8 %t to i32
  %add = add nuw i32 %zextt, %b
  %idx64 = zext i32 %add to i64
  %staddr = shl i64 %idx64, 12
  ret i64 %staddr
}
























define i64 @doNotPromoteBecauseOfPairedLoad(i32* %p, i32 %cst) {
  %ld0 = load i32, i32* %p
  %idxLd1 = getelementptr inbounds i32, i32* %p, i64 1
  %ld1 = load i32, i32* %idxLd1
  %res = add nsw i32 %ld1, %cst
  %sextres = sext i32 %res to i64
  %zextLd0 = zext i32 %ld0 to i64
  %final = add i64 %sextres, %zextLd0
  ret i64 %final
}
