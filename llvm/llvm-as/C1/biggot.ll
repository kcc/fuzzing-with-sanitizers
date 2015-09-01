



@v0 = external global i32

define void @foo1() nounwind {
entry:














  %0 = load i32, i32* @v0, align 4
  tail call void @foo0(i32 %0) nounwind
  ret void
}

declare void @foo0(i32)



define void @foo2(i32* nocapture %d, i32* nocapture %s, i32 %n) nounwind {
entry:










  %0 = bitcast i32* %d to i8*
  %1 = bitcast i32* %s to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 %n, i32 4, i1 false)
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind
