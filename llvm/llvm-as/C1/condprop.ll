

@a = external global i32		


define i32 @test1() nounwind {
entry:
	%0 = load i32, i32* @a, align 4
	%1 = icmp eq i32 %0, 4
	br i1 %1, label %bb, label %bb1

bb:		
	br label %bb8

bb1:		
	%2 = load i32, i32* @a, align 4
	%3 = icmp eq i32 %2, 5
	br i1 %3, label %bb2, label %bb3

bb2:		
	br label %bb8

bb3:		
	%4 = load i32, i32* @a, align 4
	%5 = icmp eq i32 %4, 4

	br i1 %5, label %bb4, label %bb5

bb4:		
	%6 = load i32, i32* @a, align 4
	%7 = add i32 %6, 5
	br label %bb8

bb5:		
	%8 = load i32, i32* @a, align 4
	%9 = icmp eq i32 %8, 5

	br i1 %9, label %bb6, label %bb7

bb6:		
	%10 = load i32, i32* @a, align 4
	%11 = add i32 %10, 4
	br label %bb8

bb7:		
	%12 = load i32, i32* @a, align 4
	br label %bb8

bb8:		
	%.0 = phi i32 [ %12, %bb7 ], [ %11, %bb6 ], [ %7, %bb4 ], [ 4, %bb2 ], [ 5, %bb ]
	br label %return

return:		
	ret i32 %.0
}

declare void @foo(i1)
declare void @bar(i32)


define void @test3(i32 %x, i32 %y) {
  %xz = icmp eq i32 %x, 0
  %yz = icmp eq i32 %y, 0
  %z = and i1 %xz, %yz
  br i1 %z, label %both_zero, label %nope
both_zero:
  call void @foo(i1 %xz)

  call void @foo(i1 %yz)

  call void @bar(i32 %x)

  call void @bar(i32 %y)

  ret void
nope:
  call void @foo(i1 %z)

  ret void
}


define void @test4(i1 %b, i32 %x) {
  br i1 %b, label %sw, label %case3
sw:
  switch i32 %x, label %default [
    i32 0, label %case0
    i32 1, label %case1
    i32 2, label %case0
    i32 3, label %case3
    i32 4, label %default
  ]
default:

  call void @bar(i32 %x)

  ret void
case0:

  call void @bar(i32 %x)

  ret void
case1:

  call void @bar(i32 %x)

  ret void
case3:

  call void @bar(i32 %x)

  ret void
}


define i1 @test5(i32 %x, i32 %y) {
  %cmp = icmp eq i32 %x, %y
  br i1 %cmp, label %same, label %different

same:
  %cmp2 = icmp ne i32 %x, %y

  ret i1 %cmp2

different:
  %cmp3 = icmp eq i32 %x, %y

  ret i1 %cmp3
}


define i1 @test6(i32 %x, i32 %y) {
  %cmp2 = icmp ne i32 %x, %y
  %cmp = icmp eq i32 %x, %y
  %cmp3 = icmp eq i32 %x, %y
  br i1 %cmp, label %same, label %different

same:

  ret i1 %cmp2

different:

  ret i1 %cmp3
}


define i1 @test6_fp(float %x, float %y) {
  %cmp2 = fcmp une float %x, %y
  %cmp = fcmp oeq float %x, %y
  %cmp3 = fcmp oeq float  %x, %y
  br i1 %cmp, label %same, label %different

same:

  ret i1 %cmp2

different:

  ret i1 %cmp3
}


define i1 @test7(i32 %x, i32 %y) {
  %cmp = icmp sgt i32 %x, %y
  br i1 %cmp, label %same, label %different

same:
  %cmp2 = icmp sle i32 %x, %y

  ret i1 %cmp2

different:
  %cmp3 = icmp sgt i32 %x, %y

  ret i1 %cmp3
}


define i1 @test7_fp(float %x, float %y) {
  %cmp = fcmp ogt float %x, %y
  br i1 %cmp, label %same, label %different

same:
  %cmp2 = fcmp ule float %x, %y

  ret i1 %cmp2

different:
  %cmp3 = fcmp ogt float %x, %y

  ret i1 %cmp3
}


define i1 @test8(i32 %x, i32 %y) {
  %cmp2 = icmp sle i32 %x, %y
  %cmp = icmp sgt i32 %x, %y
  %cmp3 = icmp sgt i32 %x, %y
  br i1 %cmp, label %same, label %different

same:

  ret i1 %cmp2

different:

  ret i1 %cmp3
}


define i1 @test8_fp(float %x, float %y) {
  %cmp2 = fcmp ule float %x, %y
  %cmp = fcmp ogt float %x, %y
  %cmp3 = fcmp ogt float %x, %y
  br i1 %cmp, label %same, label %different

same:

  ret i1 %cmp2

different:

  ret i1 %cmp3
}



define i32 @test9(i32 %i, i32 %j) {
  %cmp = icmp eq i32 %i, %j
  br i1 %cmp, label %cond_true, label %ret

cond_true:
  %diff = sub i32 %i, %j
  ret i32 %diff


ret:
  ret i32 5

}



define i32 @test10(i32 %j, i32 %i) {
  %cmp = icmp eq i32 %i, %j
  br i1 %cmp, label %cond_true, label %ret

cond_true:
  %diff = sub i32 %i, %j
  ret i32 %diff


ret:
  ret i32 5

}

declare i32 @yogibar()


define i32 @test11(i32 %x) {
  %v0 = call i32 @yogibar()
  %v1 = call i32 @yogibar()
  %cmp = icmp eq i32 %v0, %v1
  br i1 %cmp, label %cond_true, label %next

cond_true:
  ret i32 %v1


next:
  %cmp2 = icmp eq i32 %x, %v0
  br i1 %cmp2, label %cond_true2, label %next2

cond_true2:
  ret i32 %v0


next2:
  ret i32 0
}


define i32 @test12(i32 %x) {
  %cmp = icmp eq i32 %x, 0
  br i1 %cmp, label %cond_true, label %cond_false

cond_true:
  br label %ret

cond_false:
  br label %ret

ret:
  %res = phi i32 [ %x, %cond_true ], [ %x, %cond_false ]

  ret i32 %res
}
