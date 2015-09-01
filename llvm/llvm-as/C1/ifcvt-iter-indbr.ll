

declare i32 @foo(i32)
declare i8* @bar(i32, i8*, i8*)


























define i32 @test(i32 %a, i32 %a2, i32* %p, i32* %p2) {
entry:
  %dst1 = call i8* @bar(i32 1, i8* blockaddress(@test, %bb1), i8* blockaddress(@test, %bb2))
  %dst2 = call i8* @bar(i32 2, i8* blockaddress(@test, %bb1), i8* blockaddress(@test, %bb2))
  %dst3 = call i8* @bar(i32 3, i8* blockaddress(@test, %bb1), i8* blockaddress(@test, %bb2))
  %cc1 = icmp eq i32 %a, 21
  br i1 %cc1, label %cc1t, label %cc1f

cc1t:
  store i32 %a, i32* %p
  indirectbr i8* %dst3, [label %bb1, label %bb2]

cc1f:
  %cc2 = icmp ne i32 %a2, 42
  br i1 %cc2, label %cc2t, label %bb1
cc2t:
  store i32 %a, i32* %p2
  indirectbr i8* %dst1, [label %bb1, label %bb2]

bb1:
  %ret_bb1 = call i32 @foo(i32 1234)
  ret i32 %ret_bb1
bb2:
  %ret_bb2 = call i32 @foo(i32 4567)
  ret i32 %ret_bb2
}
