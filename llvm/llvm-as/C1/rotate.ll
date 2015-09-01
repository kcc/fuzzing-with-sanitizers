



declare i32 @llvm.nvvm.rotate.b32(i32, i32)
declare i64 @llvm.nvvm.rotate.b64(i64, i32)
declare i64 @llvm.nvvm.rotate.right.b64(i64, i32)



define i32 @rotate32(i32 %a, i32 %b) {





  %val = tail call i32 @llvm.nvvm.rotate.b32(i32 %a, i32 %b)
  ret i32 %val
}



define i64 @rotate64(i64 %a, i32 %b) {






  %val = tail call i64 @llvm.nvvm.rotate.b64(i64 %a, i32 %b)
  ret i64 %val
}



define i64 @rotateright64(i64 %a, i32 %b) {






  %val = tail call i64 @llvm.nvvm.rotate.right.b64(i64 %a, i32 %b)
  ret i64 %val
}



define i32 @rotl0(i32 %x) {




  %t0 = shl i32 %x, 8
  %t1 = lshr i32 %x, 24
  %t2 = or i32 %t0, %t1
  ret i32 %t2
}
