





define void @test(i1 %tst) {









entry:
  call i32 @llvm.arm.space(i32 2000, i32 undef)
  br i1 %tst, label %true, label %false

true:
  %val = phi float [12345.0, %entry], [undef, %false]
  call void @bar(float %val)
  ret void

false:
  br label %true
}

declare void @bar(float)
declare i32 @llvm.arm.space(i32, i32)
