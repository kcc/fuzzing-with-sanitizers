

target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"











define void @slsr_gep(i32* %input, i64 %s) {

  
  %p0 = getelementptr inbounds i32, i32* %input, i64 0
  %v0 = load i32, i32* %p0
  call void @foo(i32 %v0)

  
  %p1 = getelementptr inbounds i32, i32* %input, i64 %s

  %v1 = load i32, i32* %p1
  call void @foo(i32 %v1)

  
  %s2 = shl nsw i64 %s, 1
  %p2 = getelementptr inbounds i32, i32* %input, i64 %s2

  %v2 = load i32, i32* %p2
  call void @foo(i32 %v2)

  ret void
}











define void @slsr_gep_sext(i32* %input, i32 %s) {

  
  %p0 = getelementptr inbounds i32, i32* %input, i64 0
  %v0 = load i32, i32* %p0
  call void @foo(i32 %v0)

  
  %t = sext i32 %s to i64
  %p1 = getelementptr inbounds i32, i32* %input, i64 %t

  %v1 = load i32, i32* %p1
  call void @foo(i32 %v1)

  
  %s2 = shl nsw i32 %s, 1
  %t2 = sext i32 %s2 to i64
  %p2 = getelementptr inbounds i32, i32* %input, i64 %t2

  %v2 = load i32, i32* %p2
  call void @foo(i32 %v2)

  ret void
}












define void @slsr_gep_2d([10 x [5 x i32]]* %input, i64 %s, i64 %t) {

  
  %p0 = getelementptr inbounds [10 x [5 x i32]], [10 x [5 x i32]]* %input, i64 0, i64 %s, i64 %t
  %v0 = load i32, i32* %p0
  call void @foo(i32 %v0)

  
  %s2 = shl nsw i64 %s, 1

  %p1 = getelementptr inbounds [10 x [5 x i32]], [10 x [5 x i32]]* %input, i64 0, i64 %s2, i64 %t

  %v1 = load i32, i32* %p1
  call void @foo(i32 %v1)

  
  %s3 = mul nsw i64 %s, 3
  %p2 = getelementptr inbounds [10 x [5 x i32]], [10 x [5 x i32]]* %input, i64 0, i64 %s3, i64 %t

  %v2 = load i32, i32* %p2
  call void @foo(i32 %v2)

  ret void
}

%struct.S = type <{ i64, i32 }>







define void @slsr_gep_uglygep([10 x [5 x %struct.S]]* %input, i64 %s, i64 %t) {

  
  %p0 = getelementptr inbounds [10 x [5 x %struct.S]], [10 x [5 x %struct.S]]* %input, i64 0, i64 %s, i64 %t, i32 0
  %v0 = load i64, i64* %p0
  call void @bar(i64 %v0)

  
  %s2 = shl nsw i64 %s, 1

  %p1 = getelementptr inbounds [10 x [5 x %struct.S]], [10 x [5 x %struct.S]]* %input, i64 0, i64 %s2, i64 %t, i32 0

  %v1 = load i64, i64* %p1
  call void @bar(i64 %v1)

  
  %s3 = mul nsw i64 %s, 3
  %p2 = getelementptr inbounds [10 x [5 x %struct.S]], [10 x [5 x %struct.S]]* %input, i64 0, i64 %s3, i64 %t, i32 0

  %v2 = load i64, i64* %p2
  call void @bar(i64 %v2)

  ret void
}

define void @slsr_out_of_bounds_gep(i32* %input, i32 %s) {

  
  %p0 = getelementptr i32, i32* %input, i64 0
  %v0 = load i32, i32* %p0
  call void @foo(i32 %v0)

  
  %t = sext i32 %s to i64
  %p1 = getelementptr i32, i32* %input, i64 %t

  %v1 = load i32, i32* %p1
  call void @foo(i32 %v1)

  
  %s2 = shl nsw i32 %s, 1
  %t2 = sext i32 %s2 to i64
  %p2 = getelementptr i32, i32* %input, i64 %t2

  %v2 = load i32, i32* %p2
  call void @foo(i32 %v2)

  ret void
}

declare void @foo(i32)
declare void @bar(i64)
