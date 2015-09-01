



define void @t() nounwind uwtable ssp {
  br label %4


  ret void


  switch i32 undef, label %2 [
    i32 1090573978, label %1
    i32 1090573938, label %3
    i32 1090573957, label %5
  ]


  br i1 undef, label %2, label %4


  switch i32 undef, label %11 [
    i32 1090573938, label %3
    i32 1090573957, label %5
    i32 1090573978, label %1
    i32 165205179, label %6
  ]


  br i1 undef, label %2, label %4


  %7 = icmp eq i32 undef, 590901838
  %8 = or i1 false, %7
  %9 = or i1 true, %8
  %10 = xor i1 %8, %9
  br i1 %10, label %4, label %2


  br label %11
}


@global = external constant [2 x i8]

define void @PR15608() {
bb:
  br label %bb3

bb1:                                              
  br i1 icmp ult (i64 xor (i64 zext (i1 trunc (i192 lshr (i192 or (i192 shl (i192 zext (i64 trunc (i128 lshr (i128 trunc (i384 lshr (i384 or (i384 shl (i384 zext (i64 ptrtoint ([2 x i8]* @global to i64) to i384), i384 192), i384 425269881901436522087161771558896140289), i384 128) to i128), i128 64) to i64) to i192), i192 64), i192 1), i192 128) to i1) to i64), i64 1), i64 1), label %bb2, label %bb3

bb2:                                              
  unreachable

bb3:                                              
  br i1 xor (i1 trunc (i192 lshr (i192 or (i192 shl (i192 zext (i64 trunc (i128 lshr (i128 trunc (i384 lshr (i384 or (i384 shl (i384 zext (i64 ptrtoint ([2 x i8]* @global to i64) to i384), i384 192), i384 425269881901436522087161771558896140289), i384 128) to i128), i128 64) to i64) to i192), i192 64), i192 1), i192 128) to i1), i1 trunc (i192 lshr (i192 or (i192 and (i192 or (i192 shl (i192 zext (i64 trunc (i128 lshr (i128 trunc (i384 lshr (i384 or (i384 shl (i384 zext (i64 ptrtoint ([2 x i8]* @global to i64) to i384), i384 192), i384 425269881901436522087161771558896140289), i384 128) to i128), i128 64) to i64) to i192), i192 64), i192 1), i192 -340282366920938463463374607431768211457), i192 shl (i192 zext (i1 trunc (i192 lshr (i192 or (i192 shl (i192 zext (i64 trunc (i128 lshr (i128 trunc (i384 lshr (i384 or (i384 shl (i384 zext (i64 ptrtoint ([2 x i8]* @global to i64) to i384), i384 192), i384 425269881901436522087161771558896140289), i384 128) to i128), i128 64) to i64) to i192), i192 64), i192 1), i192 128) to i1) to i192), i192 128)), i192 128) to i1)), label %bb7, label %bb4

bb4:                                              
  %tmp = phi i1 [ true, %bb6 ], [ trunc (i192 lshr (i192 or (i192 and (i192 or (i192 shl (i192 zext (i64 trunc (i128 lshr (i128 trunc (i384 lshr (i384 or (i384 shl (i384 zext (i64 ptrtoint ([2 x i8]* @global to i64) to i384), i384 192), i384 425269881901436522087161771558896140289), i384 128) to i128), i128 64) to i64) to i192), i192 64), i192 1), i192 -340282366920938463463374607431768211457), i192 shl (i192 zext (i1 trunc (i192 lshr (i192 or (i192 shl (i192 zext (i64 trunc (i128 lshr (i128 trunc (i384 lshr (i384 or (i384 shl (i384 zext (i64 ptrtoint ([2 x i8]* @global to i64) to i384), i384 192), i384 425269881901436522087161771558896140289), i384 128) to i128), i128 64) to i64) to i192), i192 64), i192 1), i192 128) to i1) to i192), i192 128)), i192 128) to i1), %bb3 ]
  br i1 false, label %bb8, label %bb5

bb5:                                              
  br i1 %tmp, label %bb8, label %bb6

bb6:                                              
  br i1 false, label %bb8, label %bb4

bb7:                                              
  unreachable

bb8:                                              
  unreachable
}
