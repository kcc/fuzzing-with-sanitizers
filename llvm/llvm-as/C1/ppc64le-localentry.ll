







target datalayout = "e-m:e-i64:64-n32:64"
target triple = "powerpc64le-unknown-linux-gnu"

@number64 = global i64 10, align 8



define i64 @use_toc(i64 %a) nounwind {
entry:








  %0 = load i64, i64* @number64, align 8
  %cmp = icmp eq i64 %0, %a
  %conv1 = zext i1 %cmp to i64
  ret i64 %conv1
}

declare void @callee()
define void @use_toc_implicit() nounwind {
entry:








  call void @callee()
  ret void
}

define i64 @no_toc(i64 %a) nounwind {
entry:



  ret i64 %a
}

