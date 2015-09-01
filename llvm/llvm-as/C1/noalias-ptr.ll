
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g1 = global i32 0, align 4
@g2 = internal global i32 0, align 4
@g3 = unnamed_addr global i32 0, align 4
@g4 = hidden global i32 0, align 4
@g5 = protected global i32 0, align 4
@g6 = thread_local unnamed_addr global i32 0, align 4













define void @_Z2p1v() #0 {
  %mStackData = alloca [10 x i32], align 16
  %1 = bitcast [10 x i32]* %mStackData to i8*
  %2 = tail call noalias i8* @_Znam(i64 48) #4
  %3 = bitcast i8* %2 to i32*
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %mStackData, i64 0, i64 0
  %5 = icmp eq i32* %3, %4
  br i1 %5, label %7, label %6






  call void @_ZdaPv(i8* %2) #5
  br label %7


  ret void
}



define void @_Z2p2bb(i1 zeroext %b1, i1 zeroext %b2) #0 {
  %mStackData = alloca [10 x i32], align 16
  %1 = bitcast [10 x i32]* %mStackData to i8*
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %mStackData, i64 0, i64 0
  %3 = select i1 %b1, i32* %2, i32* @g2
  %4 = tail call noalias i8* @_Znam(i64 48) #4
  %5 = tail call noalias i8* @_Znam(i64 48) #4
  %.v = select i1 %b2, i8* %4, i8* %5
  %6 = bitcast i8* %.v to i32*
  %7 = icmp eq i32* %6, %3
  br i1 %7, label %9, label %8






  call void @_ZdaPv(i8* %4) #5
  call void @_ZdaPv(i8* %5) #5
  br label %9


  ret void
}

define void @_Z2p4bb(i1 zeroext %b1, i1 zeroext %b2) #0 {
  %mStackData = alloca [10 x i32], align 16
  %1 = bitcast [10 x i32]* %mStackData to i8*
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %mStackData, i64 0, i64 0
  %3 = select i1 %b1, i32* %2, i32* @g3
  %4 = tail call noalias i8* @_Znam(i64 48) #4
  %5 = tail call noalias i8* @_Znam(i64 48) #4
  %.v = select i1 %b2, i8* %4, i8* %5
  %6 = bitcast i8* %.v to i32*
  %7 = icmp eq i32* %6, %3
  br i1 %7, label %9, label %8






  call void @_ZdaPv(i8* %4) #5
  call void @_ZdaPv(i8* %5) #5
  br label %9


  ret void
}

define void @_Z2p5bb(i1 zeroext %b1, i1 zeroext %b2) #0 {
  %mStackData = alloca [10 x i32], align 16
  %1 = bitcast [10 x i32]* %mStackData to i8*
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %mStackData, i64 0, i64 0
  %3 = select i1 %b1, i32* %2, i32* @g4
  %4 = tail call noalias i8* @_Znam(i64 48) #4
  %5 = tail call noalias i8* @_Znam(i64 48) #4
  %.v = select i1 %b2, i8* %4, i8* %5
  %6 = bitcast i8* %.v to i32*
  %7 = icmp eq i32* %6, %3
  br i1 %7, label %9, label %8






  call void @_ZdaPv(i8* %4) #5
  call void @_ZdaPv(i8* %5) #5
  br label %9


  ret void
}

define void @_Z2p6bb(i1 zeroext %b1, i1 zeroext %b2) #0 {
  %mStackData = alloca [10 x i32], align 16
  %1 = bitcast [10 x i32]* %mStackData to i8*
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %mStackData, i64 0, i64 0
  %3 = select i1 %b1, i32* %2, i32* @g5
  %4 = tail call noalias i8* @_Znam(i64 48) #4
  %5 = tail call noalias i8* @_Znam(i64 48) #4
  %.v = select i1 %b2, i8* %4, i8* %5
  %6 = bitcast i8* %.v to i32*
  %7 = icmp eq i32* %6, %3
  br i1 %7, label %9, label %8






  call void @_ZdaPv(i8* %4) #5
  call void @_ZdaPv(i8* %5) #5
  br label %9


  ret void
}





define void @_Z4nopebbPi(i1 zeroext %b1, i1 zeroext %b2, i32* readnone %q) #0 {
  %mStackData = alloca [10 x i32], align 16
  %1 = bitcast [10 x i32]* %mStackData to i8*
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %mStackData, i64 0, i64 0
  %3 = select i1 %b1, i32* %2, i32* %q
  %4 = tail call noalias i8* @_Znam(i64 48) #4
  %5 = tail call noalias i8* @_Znam(i64 48) #4
  %.v = select i1 %b2, i8* %4, i8* %5
  %6 = bitcast i8* %.v to i32*
  %7 = icmp eq i32* %6, %3
  br i1 %7, label %9, label %8






  call void @_ZdaPv(i8* %4) #5
  call void @_ZdaPv(i8* %5) #5
  br label %9


  ret void
}

define void @_Z2p3bb(i1 zeroext %b1, i1 zeroext %b2) #0 {
  %mStackData = alloca [10 x i32], align 16
  %1 = bitcast [10 x i32]* %mStackData to i8*
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %mStackData, i64 0, i64 0
  %3 = select i1 %b1, i32* %2, i32* @g1
  %4 = tail call noalias i8* @_Znam(i64 48) #4
  %5 = tail call noalias i8* @_Znam(i64 48) #4
  %.v = select i1 %b2, i8* %4, i8* %5
  %6 = bitcast i8* %.v to i32*
  %7 = icmp eq i32* %6, %3
  br i1 %7, label %9, label %8






  call void @_ZdaPv(i8* %4) #5
  call void @_ZdaPv(i8* %5) #5
  br label %9


  ret void
}

define void @_Z2p7bb(i1 zeroext %b1, i1 zeroext %b2) #0 {
  %mStackData = alloca [10 x i32], align 16
  %1 = bitcast [10 x i32]* %mStackData to i8*
  %2 = getelementptr inbounds [10 x i32], [10 x i32]* %mStackData, i64 0, i64 0
  %3 = select i1 %b1, i32* %2, i32* @g6
  %4 = tail call noalias i8* @_Znam(i64 48) #4
  %5 = tail call noalias i8* @_Znam(i64 48) #4
  %.v = select i1 %b2, i8* %4, i8* %5
  %6 = bitcast i8* %.v to i32*
  %7 = icmp eq i32* %6, %3
  br i1 %7, label %9, label %8






  call void @_ZdaPv(i8* %4) #5
  call void @_ZdaPv(i8* %5) #5
  br label %9


  ret void
}

define void @_Z2p2v(i32 %c) #0 {
  %mStackData = alloca [10 x i32], i32 %c, align 16
  %1 = bitcast [10 x i32]* %mStackData to i8*
  %2 = tail call noalias i8* @_Znam(i64 48) #4
  %3 = bitcast i8* %2 to i32*
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %mStackData, i64 0, i64 0
  %5 = icmp eq i32* %3, %4
  br i1 %5, label %7, label %6






  call void @_ZdaPv(i8* %2) #5
  br label %7


  ret void
}


declare noalias i8* @_Znam(i64) #2


declare void @_ZdaPv(i8*) #3

attributes #0 = { uwtable }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }
attributes #3 = { nobuiltin nounwind }
attributes #4 = { builtin }
attributes #5 = { builtin nounwind }

