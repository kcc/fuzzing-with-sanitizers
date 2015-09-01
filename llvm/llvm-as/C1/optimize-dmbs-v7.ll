

@x1 = global i32 0, align 4
@x2 = global i32 0, align 4

define void @test() {
entry:
  br label %for.body

for.body:                                         
  %i.013 = phi i32 [ 1, %entry ], [ %inc6, %for.body ]
  store atomic i32 %i.013, i32* @x1 seq_cst, align 4
  store atomic i32 %i.013, i32* @x1 seq_cst, align 4
  store atomic i32 %i.013, i32* @x2 seq_cst, align 4
  %inc6 = add nsw i32 %i.013, 1
  %exitcond = icmp eq i32 %inc6, 2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
























}

define void @test2() {
  call void @llvm.arm.dmb(i32 11)
  tail call void @test()
  call void @llvm.arm.dmb(i32 11)
  ret void





}

define void @test3() {
  call void @llvm.arm.dmb(i32 11)
  call void @llvm.arm.dsb(i32 9)
  call void @llvm.arm.dmb(i32 11)
  ret void






}


declare void @llvm.arm.dmb(i32)
declare void @llvm.arm.dsb(i32)
