





define void @foo(i32 %v) {

entry:

  call void @llvm.bar(metadata !0)


  ret void, !baz !1
}

declare void @llvm.bar(metadata)

@global = global i32 0




!0 = metadata !{metadata !1, metadata !2, i32* @global, null}
!1 = metadata !{metadata !2, null}
!2 = metadata !{}
