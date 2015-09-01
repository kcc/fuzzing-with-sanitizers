

target datalayout = "e-p:64:64:64"








define void @foo(i8* nocapture %p, i8* nocapture %q, i8* nocapture %s) nounwind {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %p, i8* %q, i64 16, i32 1, i1 false), !tbaa !2
  store i8 2, i8* %s, align 1, !tbaa !1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %q, i8* %p, i64 16, i32 1, i1 false), !tbaa !2
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) nounwind



!0 = !{!"tbaa root", null}
!1 = !{!3, !3, i64 0}
!2 = !{!4, !4, i64 0}
!3 = !{!"A", !0}
!4 = !{!"B", !0}
