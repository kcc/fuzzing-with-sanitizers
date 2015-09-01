





define void @test0() {
  ret void





}





define i32 @test1(i32 %i) {
entry:
  switch i32 %i, label %default [
    i32 0, label %bb1
    i32 1, label %bb2
    i32 2, label %bb3
    i32 3, label %bb4
  ]

bb1:
  ret i32 111
bb2:
  ret i32 222
bb3:
  ret i32 333
bb4:
  ret i32 444
default:
  ret i32 555




















}




@bb_array = constant [2 x i8*] [i8* blockaddress(@test2, %bb1),
                                i8* blockaddress(@test2, %bb2)], align 4

define i32 @test2(i32 %i) {
entry:
  %elementptr = getelementptr inbounds [2 x i8*], [2 x i8*]* @bb_array, i32 0, i32 %i
  %0 = load i8*, i8** %elementptr, align 4
  indirectbr i8* %0, [label %bb1, label %bb2]

bb1:
  ret i32 111
bb2:
  ret i32 222


















}
