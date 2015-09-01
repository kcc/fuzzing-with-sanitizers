




define void @sub1(i32* nocapture %p, i32 %v) nounwind ssp {
entry:


  %0 = atomicrmw sub i32* %p, i32 %v monotonic
  ret void
}

define void @inc4(i64* nocapture %p) nounwind ssp {
entry:




  %0 = atomicrmw add i64* %p, i64 1 monotonic
  ret void
}

define void @add8(i64* nocapture %p) nounwind ssp {
entry:


  %0 = atomicrmw add i64* %p, i64 2 monotonic
  ret void
}

define void @add4(i64* nocapture %p, i32 %v) nounwind ssp {
entry:


  %0 = sext i32 %v to i64		
  %1 = atomicrmw add i64* %p, i64 %0 monotonic
  ret void
}

define void @inc3(i8* nocapture %p) nounwind ssp {
entry:




  %0 = atomicrmw add i8* %p, i8 1 monotonic
  ret void
}

define void @add7(i8* nocapture %p) nounwind ssp {
entry:


  %0 = atomicrmw add i8* %p, i8 2 monotonic
  ret void
}

define void @add3(i8* nocapture %p, i32 %v) nounwind ssp {
entry:


  %0 = trunc i32 %v to i8		
  %1 = atomicrmw add i8* %p, i8 %0 monotonic
  ret void
}

define void @inc2(i16* nocapture %p) nounwind ssp {
entry:




  %0 = atomicrmw add i16* %p, i16 1 monotonic
  ret void
}

define void @add6(i16* nocapture %p) nounwind ssp {
entry:


  %0 = atomicrmw add i16* %p, i16 2 monotonic
  ret void
}

define void @add2(i16* nocapture %p, i32 %v) nounwind ssp {
entry:


	%0 = trunc i32 %v to i16		
  %1 = atomicrmw add i16* %p, i16 %0 monotonic
  ret void
}

define void @inc1(i32* nocapture %p) nounwind ssp {
entry:




  %0 = atomicrmw add i32* %p, i32 1 monotonic
  ret void
}

define void @add5(i32* nocapture %p) nounwind ssp {
entry:


  %0 = atomicrmw add i32* %p, i32 2 monotonic
  ret void
}

define void @add1(i32* nocapture %p, i32 %v) nounwind ssp {
entry:


  %0 = atomicrmw add i32* %p, i32 %v monotonic
  ret void
}

define void @dec4(i64* nocapture %p) nounwind ssp {
entry:




  %0 = atomicrmw sub i64* %p, i64 1 monotonic
  ret void
}

define void @sub8(i64* nocapture %p) nounwind ssp {
entry:


  %0 = atomicrmw sub i64* %p, i64 2 monotonic
  ret void
}

define void @sub4(i64* nocapture %p, i32 %v) nounwind ssp {
entry:


	%0 = sext i32 %v to i64		
  %1 = atomicrmw sub i64* %p, i64 %0 monotonic
  ret void
}

define void @dec3(i8* nocapture %p) nounwind ssp {
entry:




  %0 = atomicrmw sub i8* %p, i8 1 monotonic
  ret void
}

define void @sub7(i8* nocapture %p) nounwind ssp {
entry:


  %0 = atomicrmw sub i8* %p, i8 2 monotonic
  ret void
}

define void @sub3(i8* nocapture %p, i32 %v) nounwind ssp {
entry:


	%0 = trunc i32 %v to i8		
  %1 = atomicrmw sub i8* %p, i8 %0 monotonic
  ret void
}

define void @dec2(i16* nocapture %p) nounwind ssp {
entry:




  %0 = atomicrmw sub i16* %p, i16 1 monotonic
  ret void
}

define void @sub6(i16* nocapture %p) nounwind ssp {
entry:


  %0 = atomicrmw sub i16* %p, i16 2 monotonic
  ret void
}

define void @sub2(i16* nocapture %p, i32 %v) nounwind ssp {
entry:



	%0 = trunc i32 %v to i16		
  %1 = atomicrmw sub i16* %p, i16 %0 monotonic
  ret void
}

define void @dec1(i32* nocapture %p) nounwind ssp {
entry:




  %0 = atomicrmw sub i32* %p, i32 1 monotonic
  ret void
}

define void @sub5(i32* nocapture %p) nounwind ssp {
entry:


  %0 = atomicrmw sub i32* %p, i32 2 monotonic
  ret void
}
