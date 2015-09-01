
%struct.X = type <{ i32, i64, i64 }>

define void @foo1(i32* %p, i64 %val) nounwind {



  %tmp1 = trunc i64 %val to i32
  %ptr = getelementptr inbounds i32, i32* %p, i64 -1
  store i32 %tmp1, i32* %ptr, align 4
  ret void
}
define void @foo2(i16* %p, i64 %val) nounwind {



  %tmp1 = trunc i64 %val to i16
  %ptr = getelementptr inbounds i16, i16* %p, i64 -1
  store i16 %tmp1, i16* %ptr, align 2
  ret void
}
define void @foo3(i8* %p, i64 %val) nounwind {



  %tmp1 = trunc i64 %val to i8
  %ptr = getelementptr inbounds i8, i8* %p, i64 -1
  store i8 %tmp1, i8* %ptr, align 1
  ret void
}
define void @foo4(i16* %p, i32 %val) nounwind {



  %tmp1 = trunc i32 %val to i16
  %ptr = getelementptr inbounds i16, i16* %p, i32 -1
  store i16 %tmp1, i16* %ptr, align 2
  ret void
}
define void @foo5(i8* %p, i32 %val) nounwind {



  %tmp1 = trunc i32 %val to i8
  %ptr = getelementptr inbounds i8, i8* %p, i32 -1
  store i8 %tmp1, i8* %ptr, align 1
  ret void
}

define void @foo(%struct.X* nocapture %p) nounwind optsize ssp {





  %B = getelementptr inbounds %struct.X, %struct.X* %p, i64 0, i32 1
  %val = bitcast i64* %B to i8*
  call void @llvm.memset.p0i8.i64(i8* %val, i8 0, i64 16, i32 1, i1 false)
  ret void
}

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind









define void @unaligned(<4 x i32>* %p, <4 x i32> %v) nounwind {
  store <4 x i32> %v, <4 x i32>* %p, align 4
  ret void
}



define void @aligned(<4 x i32>* %p, <4 x i32> %v) nounwind {
  store <4 x i32> %v, <4 x i32>* %p
  ret void
}






define void @twobytealign(<4 x i32>* %p, <4 x i32> %v) nounwind {
  store <4 x i32> %v, <4 x i32>* %p, align 2
  ret void
}


define void @onebytealign(<4 x i32>* %p, <4 x i32> %v) nounwind {
  store <4 x i32> %v, <4 x i32>* %p, align 1
  ret void
}
