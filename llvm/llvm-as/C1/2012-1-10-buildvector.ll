

define void @bad_cast() {







  %vext.i = shufflevector <2 x i64> undef, <2 x i64> undef, <3 x i32> <i32 0, i32 1, i32 undef>
  %vecinit8.i = shufflevector <3 x i64> zeroinitializer, <3 x i64> %vext.i, <3 x i32> <i32 0, i32 3, i32 4>
  store <3 x i64> %vecinit8.i, <3 x i64>* undef, align 32
  ret void
}

define void @bad_insert(i32 %t) {






  %v2 = insertelement <8 x i32> zeroinitializer, i32 %t, i32 0
  store <8 x i32> %v2, <8 x i32> addrspace(1)* undef, align 32
  ret void
}

