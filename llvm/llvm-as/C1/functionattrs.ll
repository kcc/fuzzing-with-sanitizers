











define void @test0_yes(i32* %p) nounwind {
  store i32 0, i32* %p, !tbaa !1
  ret void
}


define void @test0_no(i32* %p) nounwind {
  store i32 0, i32* %p, !tbaa !2
  ret void
}





define void @test1_yes(i32* %p) nounwind {
  call void @callee(i32* %p), !tbaa !1
  ret void
}


define void @test1_no(i32* %p) nounwind {
  call void @callee(i32* %p), !tbaa !2
  ret void
}









define void @test2_yes(i8* %p, i8* %q, i64 %n) nounwind {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %p, i8* %q, i64 %n, i32 1, i1 false), !tbaa !1
  ret void
}


define void @test2_no(i8* %p, i8* %q, i64 %n) nounwind {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %p, i8* %q, i64 %n, i32 1, i1 false), !tbaa !2
  ret void
}




define i32 @test3_yes(i8* %p) nounwind {
  %t = va_arg i8* %p, i32, !tbaa !1
  ret i32 %t
}


define i32 @test3_no(i8* %p) nounwind {
  %t = va_arg i8* %p, i32, !tbaa !2
  ret i32 %t
}

declare void @callee(i32* %p) nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8*, i8*, i64, i32, i1) nounwind






!0 = !{ }


!1 = !{!3, !3, i64 0, i1 1 }

!2 = !{!3, !3, i64 0, i1 0 }
!3 = !{ !"foo", !0 }
