



define void @test() {
  call void @llvm.arm.dmb(i32 3)     
  call void @llvm.arm.dsb(i32 7)     
  call void @llvm.arm.isb(i32 15)    
  ret void
}





define void @test_dmb_reordering(i32 %a, i32 %b, i32* %d) {
  store i32 %a, i32* %d              

  call void @llvm.arm.dmb(i32 15)    

  %d1 = getelementptr i32, i32* %d, i32 1
  store i32 %b, i32* %d1             

  ret void
}



define void @test_dsb_reordering(i32 %a, i32 %b, i32* %d) {
  store i32 %a, i32* %d              

  call void @llvm.arm.dsb(i32 15)    

  %d1 = getelementptr i32, i32* %d, i32 1
  store i32 %b, i32* %d1             

  ret void
}



define void @test_isb_reordering(i32 %a, i32 %b, i32* %d) {
  store i32 %a, i32* %d              

  call void @llvm.arm.isb(i32 15)    

  %d1 = getelementptr i32, i32* %d, i32 1
  store i32 %b, i32* %d1             

  ret void
}

declare void @llvm.arm.dmb(i32)
declare void @llvm.arm.dsb(i32)
declare void @llvm.arm.isb(i32)
