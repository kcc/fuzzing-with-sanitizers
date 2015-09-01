









define void @F1() {
  ret void
}




define void @F2(i32 %y) {
bb0:
switch i32 %y, label %bb5 [
    i32 1, label %bb1
    i32 2, label %bb2
    i32 3, label %bb3
    i32 4, label %bb4
  ]
bb1:
  ret void
bb2:
  ret void
bb3:
  ret void
bb4:
  ret void
bb5:
  ret void
}

























declare void @G()

define void @F3(i32 %y) personality i8* bitcast (void ()* @G to i8*) {
bb0:
  invoke void @G()
          to label %bb2 unwind label %bb1
bb1:
  landingpad { i8*, i32 }
          catch i8* null
  br label %bb2
bb2:

switch i32 %y, label %bb7 [
    i32 1, label %bb3
    i32 2, label %bb4
    i32 3, label %bb5
    i32 4, label %bb6
  ]
bb3:
  ret void
bb4:
  ret void
bb5:
  ret void
bb6:
  ret void
bb7:
  ret void
}













@G1 = common global i32 0










@G2 = weak_odr unnamed_addr constant i32 42     










@G3 = unnamed_addr constant i32* @G1

















@G4 = private unnamed_addr constant {i64,i64} { i64 34, i64 0 }














@G5 = global i32 47













@"foo bar" = linkonce global i32 42











@G6 = weak_odr unnamed_addr constant [1 x i8] c"\01"














@G7 = unnamed_addr constant [10 x i8] c"abcdefghi\00"


















@G8 = unnamed_addr constant [4 x i16] [ i16 1, i16 2, i16 3, i16 0 ]









@G9 = unnamed_addr constant [4 x i32] [ i32 1, i32 2, i32 3, i32 0 ]









@G10 = weak global [100 x i32] zeroinitializer, align 32 



















@G11 = global [0 x i32] zeroinitializer
@G12 = global {} zeroinitializer
@G13 = global { [0 x {}] } zeroinitializer








@G14 = private unnamed_addr constant [4 x i8] c"foo\00", align 1












@G15 = unnamed_addr constant i64 0


















