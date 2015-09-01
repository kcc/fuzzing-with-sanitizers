











define float @foo(i8* nocapture %buf, float %a, float %b) nounwind uwtable {


















entry:
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf, i8* blockaddress(@foo, %out), i64 22, i32 1, i1 false)
  br label %out

out:                                              
  %add = fadd float %a, %b
  ret float %add
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind
