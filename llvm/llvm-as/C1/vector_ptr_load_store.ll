


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"

%0 = type { %0*, %1 }
%1 = type { i8*, i32 }

@p = global [2048 x [8 x i32*]] zeroinitializer, align 16
@q = global [2048 x i16] zeroinitializer, align 16
@r = global [2048 x i16] zeroinitializer, align 16








define void @test_consecutive_store(%0**, %0**, %0** nocapture) nounwind ssp uwtable align 2 {
  %4 = load %0*, %0** %2, align 8
  %5 = icmp eq %0** %0, %1
  br i1 %5, label %12, label %6


  br label %7


  %8 = phi %0** [ %0, %6 ], [ %9, %7 ]
  store %0* %4, %0** %8, align 8
  %9 = getelementptr inbounds %0*, %0** %8, i64 1
  %10 = icmp eq %0** %9, %1
  br i1 %10, label %11, label %7


  br label %12


  ret void
}













define void @test_nonconsecutive_store() nounwind ssp uwtable {
  br label %1


  %2 = phi i64 [ 0, %0 ], [ %15, %14 ]
  br label %3


  %4 = phi i64 [ 0, %1 ], [ %11, %3 ]
  %5 = getelementptr inbounds [2048 x i16], [2048 x i16]* @q, i64 0, i64 %4
  %6 = load i16, i16* %5, align 2
  %7 = sext i16 %6 to i64
  %8 = add i64 %7, 1
  %9 = inttoptr i64 %8 to i32*
  %10 = getelementptr inbounds [2048 x [8 x i32*]], [2048 x [8 x i32*]]* @p, i64 0, i64 %4, i64 %2
  store i32* %9, i32** %10, align 8
  %11 = add i64 %4, 1
  %12 = trunc i64 %11 to i32
  %13 = icmp ne i32 %12, 1024
  br i1 %13, label %3, label %14


  %15 = add i64 %2, 1
  %16 = trunc i64 %15 to i32
  %17 = icmp ne i32 %16, 8
  br i1 %17, label %1, label %18


  ret void
}


@ia = global [1024 x i32*] zeroinitializer, align 16
@ib = global [1024 x i32] zeroinitializer, align 16
@ic = global [1024 x i8] zeroinitializer, align 16
@p2 = global [2048 x [8 x i32*]] zeroinitializer, align 16
@q2 = global [2048 x i16] zeroinitializer, align 16





define i8 @test_consecutive_ptr_load() nounwind readonly ssp uwtable {
  br label %1


  %2 = phi i64 [ 0, %0 ], [ %10, %1 ]
  %3 = phi i8 [ 0, %0 ], [ %9, %1 ]
  %4 = getelementptr inbounds [1024 x i32*], [1024 x i32*]* @ia, i32 0, i64 %2
  %5 = load i32*, i32** %4, align 4
  %6 = ptrtoint i32* %5 to i64
  %7 = trunc i64 %6 to i8
  %8 = add i8 %3, 1
  %9 = add i8 %7, %8
  %10 = add i64 %2, 1
  %11 = icmp ne i64 %10, 1024
  br i1 %11, label %1, label %12


  %13 = phi i8 [ %9, %1 ]
  ret i8 %13
}




define void @test_nonconsecutive_ptr_load() nounwind ssp uwtable {
  br label %1


  %2 = phi i64 [ 0, %0 ], [ %14, %13 ]
  br label %3


  %4 = phi i64 [ 0, %1 ], [ %10, %3 ]
  %5 = getelementptr inbounds [2048 x [8 x i32*]], [2048 x [8 x i32*]]* @p2, i64 0, i64 %4, i64 %2
  %6 = getelementptr inbounds [2048 x i16], [2048 x i16]* @q2, i64 0, i64 %4
  %7 = load i32*, i32** %5, align 2
  %8 = ptrtoint i32* %7 to i64
  %9 = trunc i64 %8 to i16
  store i16 %9, i16* %6, align 8
  %10 = add i64 %4, 1
  %11 = trunc i64 %10 to i32
  %12 = icmp ne i32 %11, 1024
  br i1 %12, label %3, label %13


  %14 = add i64 %2, 1
  %15 = trunc i64 %14 to i32
  %16 = icmp ne i32 %15, 8
  br i1 %16, label %1, label %17


  ret void
}

