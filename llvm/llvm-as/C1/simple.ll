



target datalayout = "e-p:32:32"


@a = constant i32 1
@b = constant [63 x i32] zeroinitializer
@c = constant i32 3
@d = constant [2 x i32] [i32 4, i32 5]




!0 = !{!"bitset1", i32* @a, i32 0}

!1 = !{!"bitset1", [63 x i32]* @b, i32 0}

!2 = !{!"bitset1", [2 x i32]* @d, i32 4}



!3 = !{!"bitset2", [63 x i32]* @b, i32 0}

!4 = !{!"bitset2", i32* @c, i32 0}



!5 = !{!"bitset3", i32* @a, i32 0}

!6 = !{!"bitset3", i32* @c, i32 0}




!7 = !{!"bitset2", null, i32 0}

!llvm.bitsets = !{ !0, !1, !2, !3, !4, !5, !6, !7 }











@aptr = constant i32* @a


@bptr = constant [63 x i32]* @b


@cptr = constant i32* @c


@dptr = constant [2 x i32]* @d






declare i1 @llvm.bitset.test(i8* %ptr, metadata %bitset) nounwind readnone


define i1 @foo(i32* %p) {
  

  
  %pi8 = bitcast i32* %p to i8*
  
  
  
  
  
  
  

  
  
  
  

  
  %x = call i1 @llvm.bitset.test(i8* %pi8, metadata !"bitset1")

  
  %y = call i1 @llvm.bitset.test(i8* %pi8, metadata !"bitset1")

  
  ret i1 %x
}


define i1 @bar(i32* %p) {
  
  %pi8 = bitcast i32* %p to i8*
  
  
  
  
  
  
  %x = call i1 @llvm.bitset.test(i8* %pi8, metadata !"bitset2")

  
  ret i1 %x
}


define i1 @baz(i32* %p) {
  
  %pi8 = bitcast i32* %p to i8*
  
  
  
  
  
  
  

  
  
  
  

  
  %x = call i1 @llvm.bitset.test(i8* %pi8, metadata !"bitset3")
  
  ret i1 %x
}


