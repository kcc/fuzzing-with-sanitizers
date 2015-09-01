



@arr = internal unnamed_addr global [32 x i32] zeroinitializer, align 16


define i32 @test1() {
vector.ph:
  br label %vector.body

vector.body:
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %0 = getelementptr inbounds [32 x i32], [32 x i32]* @arr, i32 0, i32 %index
  %1 = bitcast i32* %0 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %1, align 16
  %2 = add nsw <4 x i32> %wide.load, <i32 10, i32 10, i32 10, i32 10>
  %3 = xor <4 x i32> %2, <i32 123345, i32 123345, i32 123345, i32 123345>
  %4 = add nsw <4 x i32> %3, <i32 112, i32 112, i32 112, i32 112>
  %5 = xor <4 x i32> %4, <i32 543345, i32 543345, i32 543345, i32 543345>
  %6 = add nsw <4 x i32> %5, <i32 73, i32 73, i32 73, i32 73>
  %7 = xor <4 x i32> %6, <i32 345987, i32 345987, i32 345987, i32 345987>
  %8 = add nsw <4 x i32> %7, <i32 48, i32 48, i32 48, i32 48>
  %9 = xor <4 x i32> %8, <i32 123987, i32 123987, i32 123987, i32 123987>
  store <4 x i32> %9, <4 x i32>* %1, align 16
  %index.next = add i32 %index, 4
  %10 = icmp eq i32 %index.next, 32
  br i1 %10, label %middle.block, label %vector.body

middle.block:
  ret i32 0

















}
