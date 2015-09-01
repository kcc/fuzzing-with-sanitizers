

target triple = "arm64-apple-darwin"







%struct.s38 = type { i32, i16 }

%struct.s39 = type { i32, i16, [10 x i8] }

%struct.s40 = type { i32, i16, i32, i16 }
%struct.s41 = type { i32, i16, i32, i16 }

%struct.s42 = type { i32, i16, i32, i16, i32, i16 }
%struct.s43 = type { i32, i16, i32, i16, i32, i16, [10 x i8] }

@g38 = common global %struct.s38 zeroinitializer, align 4
@g38_2 = common global %struct.s38 zeroinitializer, align 4
@g39 = common global %struct.s39 zeroinitializer, align 16
@g39_2 = common global %struct.s39 zeroinitializer, align 16
@g40 = common global %struct.s40 zeroinitializer, align 4
@g40_2 = common global %struct.s40 zeroinitializer, align 4
@g41 = common global %struct.s41 zeroinitializer, align 16
@g41_2 = common global %struct.s41 zeroinitializer, align 16
@g42 = common global %struct.s42 zeroinitializer, align 4
@g42_2 = common global %struct.s42 zeroinitializer, align 4
@g43 = common global %struct.s43 zeroinitializer, align 16
@g43_2 = common global %struct.s43 zeroinitializer, align 16


define i32 @f38(i32 %i, i64 %s1.coerce, i64 %s2.coerce) #0 {
entry:



  %s1.sroa.0.0.extract.trunc = trunc i64 %s1.coerce to i32
  %s1.sroa.1.4.extract.shift = lshr i64 %s1.coerce, 32
  %s2.sroa.0.0.extract.trunc = trunc i64 %s2.coerce to i32
  %s2.sroa.1.4.extract.shift = lshr i64 %s2.coerce, 32
  %sext8 = shl nuw nsw i64 %s1.sroa.1.4.extract.shift, 16
  %sext = trunc i64 %sext8 to i32
  %conv = ashr exact i32 %sext, 16
  %sext1011 = shl nuw nsw i64 %s2.sroa.1.4.extract.shift, 16
  %sext10 = trunc i64 %sext1011 to i32
  %conv6 = ashr exact i32 %sext10, 16
  %add = add i32 %s1.sroa.0.0.extract.trunc, %i
  %add3 = add i32 %add, %s2.sroa.0.0.extract.trunc
  %add4 = add i32 %add3, %conv
  %add7 = add i32 %add4, %conv6
  ret i32 %add7
}

define i32 @caller38() #1 {
entry:



  %0 = load i64, i64* bitcast (%struct.s38* @g38 to i64*), align 4
  %1 = load i64, i64* bitcast (%struct.s38* @g38_2 to i64*), align 4
  %call = tail call i32 @f38(i32 3, i64 %0, i64 %1) #5
  ret i32 %call
}

declare i32 @f38_stack(i32 %i, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6,
                i32 %i7, i32 %i8, i32 %i9, i64 %s1.coerce, i64 %s2.coerce) #0



define i32 @caller38_stack() #1 {
entry:




  %0 = load i64, i64* bitcast (%struct.s38* @g38 to i64*), align 4
  %1 = load i64, i64* bitcast (%struct.s38* @g38_2 to i64*), align 4
  %call = tail call i32 @f38_stack(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6,
                                   i32 7, i32 8, i32 9, i64 %0, i64 %1) #5
  ret i32 %call
}



define i32 @f39(i32 %i, i128 %s1.coerce, i128 %s2.coerce) #0 {
entry:



  %s1.sroa.0.0.extract.trunc = trunc i128 %s1.coerce to i32
  %s1.sroa.1.4.extract.shift = lshr i128 %s1.coerce, 32
  %s2.sroa.0.0.extract.trunc = trunc i128 %s2.coerce to i32
  %s2.sroa.1.4.extract.shift = lshr i128 %s2.coerce, 32
  %sext8 = shl nuw nsw i128 %s1.sroa.1.4.extract.shift, 16
  %sext = trunc i128 %sext8 to i32
  %conv = ashr exact i32 %sext, 16
  %sext1011 = shl nuw nsw i128 %s2.sroa.1.4.extract.shift, 16
  %sext10 = trunc i128 %sext1011 to i32
  %conv6 = ashr exact i32 %sext10, 16
  %add = add i32 %s1.sroa.0.0.extract.trunc, %i
  %add3 = add i32 %add, %s2.sroa.0.0.extract.trunc
  %add4 = add i32 %add3, %conv
  %add7 = add i32 %add4, %conv6
  ret i32 %add7
}

define i32 @caller39() #1 {
entry:



  %0 = load i128, i128* bitcast (%struct.s39* @g39 to i128*), align 16
  %1 = load i128, i128* bitcast (%struct.s39* @g39_2 to i128*), align 16
  %call = tail call i32 @f39(i32 3, i128 %0, i128 %1) #5
  ret i32 %call
}

declare i32 @f39_stack(i32 %i, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6,
                i32 %i7, i32 %i8, i32 %i9, i128 %s1.coerce, i128 %s2.coerce) #0



define i32 @caller39_stack() #1 {
entry:





  %0 = load i128, i128* bitcast (%struct.s39* @g39 to i128*), align 16
  %1 = load i128, i128* bitcast (%struct.s39* @g39_2 to i128*), align 16
  %call = tail call i32 @f39_stack(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6,
                                   i32 7, i32 8, i32 9, i128 %0, i128 %1) #5
  ret i32 %call
}



define i32 @f40(i32 %i, [2 x i64] %s1.coerce, [2 x i64] %s2.coerce) #0 {
entry:



  %s1.coerce.fca.0.extract = extractvalue [2 x i64] %s1.coerce, 0
  %s2.coerce.fca.0.extract = extractvalue [2 x i64] %s2.coerce, 0
  %s1.sroa.0.0.extract.trunc = trunc i64 %s1.coerce.fca.0.extract to i32
  %s2.sroa.0.0.extract.trunc = trunc i64 %s2.coerce.fca.0.extract to i32
  %s1.sroa.0.4.extract.shift = lshr i64 %s1.coerce.fca.0.extract, 32
  %sext8 = shl nuw nsw i64 %s1.sroa.0.4.extract.shift, 16
  %sext = trunc i64 %sext8 to i32
  %conv = ashr exact i32 %sext, 16
  %s2.sroa.0.4.extract.shift = lshr i64 %s2.coerce.fca.0.extract, 32
  %sext1011 = shl nuw nsw i64 %s2.sroa.0.4.extract.shift, 16
  %sext10 = trunc i64 %sext1011 to i32
  %conv6 = ashr exact i32 %sext10, 16
  %add = add i32 %s1.sroa.0.0.extract.trunc, %i
  %add3 = add i32 %add, %s2.sroa.0.0.extract.trunc
  %add4 = add i32 %add3, %conv
  %add7 = add i32 %add4, %conv6
  ret i32 %add7
}

define i32 @caller40() #1 {
entry:



  %0 = load [2 x i64], [2 x i64]* bitcast (%struct.s40* @g40 to [2 x i64]*), align 4
  %1 = load [2 x i64], [2 x i64]* bitcast (%struct.s40* @g40_2 to [2 x i64]*), align 4
  %call = tail call i32 @f40(i32 3, [2 x i64] %0, [2 x i64] %1) #5
  ret i32 %call
}

declare i32 @f40_stack(i32 %i, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6,
                i32 %i7, i32 %i8, i32 %i9, [2 x i64] %s1.coerce, [2 x i64] %s2.coerce) #0



define i32 @caller40_stack() #1 {
entry:





  %0 = load [2 x i64], [2 x i64]* bitcast (%struct.s40* @g40 to [2 x i64]*), align 4
  %1 = load [2 x i64], [2 x i64]* bitcast (%struct.s40* @g40_2 to [2 x i64]*), align 4
  %call = tail call i32 @f40_stack(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6,
                         i32 7, i32 8, i32 9, [2 x i64] %0, [2 x i64] %1) #5
  ret i32 %call
}



define i32 @f41(i32 %i, i128 %s1.coerce, i128 %s2.coerce) #0 {
entry:



  %s1.sroa.0.0.extract.trunc = trunc i128 %s1.coerce to i32
  %s1.sroa.1.4.extract.shift = lshr i128 %s1.coerce, 32
  %s2.sroa.0.0.extract.trunc = trunc i128 %s2.coerce to i32
  %s2.sroa.1.4.extract.shift = lshr i128 %s2.coerce, 32
  %sext8 = shl nuw nsw i128 %s1.sroa.1.4.extract.shift, 16
  %sext = trunc i128 %sext8 to i32
  %conv = ashr exact i32 %sext, 16
  %sext1011 = shl nuw nsw i128 %s2.sroa.1.4.extract.shift, 16
  %sext10 = trunc i128 %sext1011 to i32
  %conv6 = ashr exact i32 %sext10, 16
  %add = add i32 %s1.sroa.0.0.extract.trunc, %i
  %add3 = add i32 %add, %s2.sroa.0.0.extract.trunc
  %add4 = add i32 %add3, %conv
  %add7 = add i32 %add4, %conv6
  ret i32 %add7
}

define i32 @caller41() #1 {
entry:



  %0 = load i128, i128* bitcast (%struct.s41* @g41 to i128*), align 16
  %1 = load i128, i128* bitcast (%struct.s41* @g41_2 to i128*), align 16
  %call = tail call i32 @f41(i32 3, i128 %0, i128 %1) #5
  ret i32 %call
}

declare i32 @f41_stack(i32 %i, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6,
                i32 %i7, i32 %i8, i32 %i9, i128 %s1.coerce, i128 %s2.coerce) #0



define i32 @caller41_stack() #1 {
entry:





  %0 = load i128, i128* bitcast (%struct.s41* @g41 to i128*), align 16
  %1 = load i128, i128* bitcast (%struct.s41* @g41_2 to i128*), align 16
  %call = tail call i32 @f41_stack(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6,
                            i32 7, i32 8, i32 9, i128 %0, i128 %1) #5
  ret i32 %call
}


define i32 @f42(i32 %i, %struct.s42* nocapture %s1, %struct.s42* nocapture %s2) #2 {
entry:










  %i1 = getelementptr inbounds %struct.s42, %struct.s42* %s1, i64 0, i32 0
  %0 = load i32, i32* %i1, align 4, !tbaa !0
  %i2 = getelementptr inbounds %struct.s42, %struct.s42* %s2, i64 0, i32 0
  %1 = load i32, i32* %i2, align 4, !tbaa !0
  %s = getelementptr inbounds %struct.s42, %struct.s42* %s1, i64 0, i32 1
  %2 = load i16, i16* %s, align 2, !tbaa !3
  %conv = sext i16 %2 to i32
  %s5 = getelementptr inbounds %struct.s42, %struct.s42* %s2, i64 0, i32 1
  %3 = load i16, i16* %s5, align 2, !tbaa !3
  %conv6 = sext i16 %3 to i32
  %add = add i32 %0, %i
  %add3 = add i32 %add, %1
  %add4 = add i32 %add3, %conv
  %add7 = add i32 %add4, %conv6
  ret i32 %add7
}


define i32 @caller42() #3 {
entry:


















  %tmp = alloca %struct.s42, align 4
  %tmp1 = alloca %struct.s42, align 4
  %0 = bitcast %struct.s42* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.s42* @g42 to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  %1 = bitcast %struct.s42* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.s42* @g42_2 to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  %call = call i32 @f42(i32 3, %struct.s42* %tmp, %struct.s42* %tmp1) #5
  ret i32 %call
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

declare i32 @f42_stack(i32 %i, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6,
                       i32 %i7, i32 %i8, i32 %i9, %struct.s42* nocapture %s1,
                       %struct.s42* nocapture %s2) #2

define i32 @caller42_stack() #3 {
entry:




























  %tmp = alloca %struct.s42, align 4
  %tmp1 = alloca %struct.s42, align 4
  %0 = bitcast %struct.s42* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.s42* @g42 to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  %1 = bitcast %struct.s42* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.s42* @g42_2 to i8*), i64 24, i32 4, i1 false), !tbaa.struct !4
  %call = call i32 @f42_stack(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7,
                       i32 8, i32 9, %struct.s42* %tmp, %struct.s42* %tmp1) #5
  ret i32 %call
}



define i32 @f43(i32 %i, %struct.s43* nocapture %s1, %struct.s43* nocapture %s2) #2 {
entry:










  %i1 = getelementptr inbounds %struct.s43, %struct.s43* %s1, i64 0, i32 0
  %0 = load i32, i32* %i1, align 4, !tbaa !0
  %i2 = getelementptr inbounds %struct.s43, %struct.s43* %s2, i64 0, i32 0
  %1 = load i32, i32* %i2, align 4, !tbaa !0
  %s = getelementptr inbounds %struct.s43, %struct.s43* %s1, i64 0, i32 1
  %2 = load i16, i16* %s, align 2, !tbaa !3
  %conv = sext i16 %2 to i32
  %s5 = getelementptr inbounds %struct.s43, %struct.s43* %s2, i64 0, i32 1
  %3 = load i16, i16* %s5, align 2, !tbaa !3
  %conv6 = sext i16 %3 to i32
  %add = add i32 %0, %i
  %add3 = add i32 %add, %1
  %add4 = add i32 %add3, %conv
  %add7 = add i32 %add4, %conv6
  ret i32 %add7
}

define i32 @caller43() #3 {
entry:
























  %tmp = alloca %struct.s43, align 16
  %tmp1 = alloca %struct.s43, align 16
  %0 = bitcast %struct.s43* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.s43* @g43 to i8*), i64 32, i32 16, i1 false), !tbaa.struct !4
  %1 = bitcast %struct.s43* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.s43* @g43_2 to i8*), i64 32, i32 16, i1 false), !tbaa.struct !4
  %call = call i32 @f43(i32 3, %struct.s43* %tmp, %struct.s43* %tmp1) #5
  ret i32 %call
}

declare i32 @f43_stack(i32 %i, i32 %i2, i32 %i3, i32 %i4, i32 %i5, i32 %i6,
                       i32 %i7, i32 %i8, i32 %i9, %struct.s43* nocapture %s1,
                       %struct.s43* nocapture %s2) #2

define i32 @caller43_stack() #3 {
entry:



































  %tmp = alloca %struct.s43, align 16
  %tmp1 = alloca %struct.s43, align 16
  %0 = bitcast %struct.s43* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast (%struct.s43* @g43 to i8*), i64 32, i32 16, i1 false), !tbaa.struct !4
  %1 = bitcast %struct.s43* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.s43* @g43_2 to i8*), i64 32, i32 16, i1 false), !tbaa.struct !4
  %call = call i32 @f43_stack(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7,
                       i32 8, i32 9, %struct.s43* %tmp, %struct.s43* %tmp1) #5
  ret i32 %call
}



declare i32 @callee_i128_split(i32 %i, i32 %i2, i32 %i3, i32 %i4, i32 %i5,
                               i32 %i6, i32 %i7, i128 %s1, i32 %i8)

define i32 @i128_split() {
entry:












  %0 = load i128, i128* bitcast (%struct.s41* @g41 to i128*), align 16
  %call = tail call i32 @callee_i128_split(i32 1, i32 2, i32 3, i32 4, i32 5,
                                           i32 6, i32 7, i128 %0, i32 8) #5
  ret i32 %call
}

declare i32 @callee_i64(i32 %i, i32 %i2, i32 %i3, i32 %i4, i32 %i5,
                               i32 %i6, i32 %i7, i64 %s1, i32 %i8)

define i32 @i64_split() {
entry:










  %0 = load i64, i64* bitcast (%struct.s41* @g41 to i64*), align 16
  %call = tail call i32 @callee_i64(i32 1, i32 2, i32 3, i32 4, i32 5,
                                    i32 6, i32 7, i64 %0, i32 8) #5
  ret i32 %call
}

attributes #0 = { noinline nounwind readnone "fp-contract-model"="standard" "relocation-model"="pic" "ssp-buffers-size"="8" }
attributes #1 = { nounwind readonly "fp-contract-model"="standard" "relocation-model"="pic" "ssp-buffers-size"="8" }
attributes #2 = { noinline nounwind readonly "fp-contract-model"="standard" "relocation-model"="pic" "ssp-buffers-size"="8" }
attributes #3 = { nounwind "fp-contract-model"="standard" "relocation-model"="pic" "ssp-buffers-size"="8" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin }

!0 = !{!"int", !1}
!1 = !{!"omnipotent char", !2}
!2 = !{!"Simple C/C++ TBAA"}
!3 = !{!"short", !1}
!4 = !{i64 0, i64 4, !0, i64 4, i64 2, !3, i64 8, i64 4, !0, i64 12, i64 2, !3, i64 16, i64 4, !0, i64 20, i64 2, !3}
