

target datalayout = "e-p:32:32"


@a = constant i32 1
@b = constant i32 2

!0 = !{!"bitset1", i32* @a, i32 0}
!1 = !{!"bitset1", i32* @b, i32 0}
!2 = !{!"bitset2", i32* @a, i32 0}
!3 = !{!"bitset3", i32* @b, i32 0}

!llvm.bitsets = !{ !0, !1, !2, !3 }

declare i1 @llvm.bitset.test(i8* %ptr, metadata %bitset) nounwind readnone


define i1 @foo(i8* %p) {
  
  
  %x = call i1 @llvm.bitset.test(i8* %p, metadata !"bitset2")
  
  ret i1 %x
}


define i1 @bar(i8* %p) {
  
  
  %x = call i1 @llvm.bitset.test(i8* %p, metadata !"bitset3")
  
  ret i1 %x
}


define i1 @x(i8* %p) {
  %x = call i1 @llvm.bitset.test(i8* %p, metadata !"bitset1")
  ret i1 %x
}
