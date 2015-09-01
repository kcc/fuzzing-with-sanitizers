





define void @memcpyintrinsic(i8* %dest, i8* %src, i32 %len) {
entry:


  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %src, i32 %len, i32 1, i1 true)
  
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* %dest, i8* %src, i32 %len, i32 %align, i1 %isvolatile)