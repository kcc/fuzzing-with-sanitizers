






define void @alloca(){
entry:

  %res1 = alloca i8


  %res2 = alloca i8, i32 2


  %res3 = alloca i8, i32 2, align 4


  %res4 = alloca i8, align 4

  ret void
}

define void @load(){
entry:
  %ptr1 = alloca i8
  store i8 2, i8* %ptr1


  %res1 = load i8, i8* %ptr1


  %res2 = load volatile i8, i8* %ptr1


  %res3 = load i8, i8* %ptr1, align 1


  %res4 = load volatile i8, i8* %ptr1, align 1


  %res5 = load i8, i8* %ptr1, !nontemporal !0


  %res6 = load volatile i8, i8* %ptr1, !nontemporal !0


  %res7 = load i8, i8* %ptr1, align 1, !nontemporal !0


  %res8 = load volatile i8, i8* %ptr1, align 1, !nontemporal !0


  %res9 = load i8, i8* %ptr1, !invariant.load !1


  %res10 = load volatile i8, i8* %ptr1, !invariant.load !1


  %res11 = load i8, i8* %ptr1, align 1, !invariant.load !1


  %res12 = load volatile i8, i8* %ptr1, align 1, !invariant.load !1


  %res13 = load i8, i8* %ptr1, !nontemporal !0, !invariant.load !1


  %res14 = load volatile i8, i8* %ptr1, !nontemporal !0, !invariant.load !1


  %res15 = load i8, i8* %ptr1, align 1, !nontemporal !0, !invariant.load !1


  %res16 = load volatile i8, i8* %ptr1, align 1, !nontemporal !0, !invariant.load !1

  ret void
}

define void @loadAtomic(){
entry:
  %ptr1 = alloca i8
  store i8 2, i8* %ptr1


  %res1 = load atomic i8, i8* %ptr1 unordered, align 1


  %res2 = load atomic i8, i8* %ptr1 monotonic, align 1


  %res3 = load atomic i8, i8* %ptr1 acquire, align 1


  %res4 = load atomic i8, i8* %ptr1 seq_cst, align 1


  %res5 = load atomic volatile i8, i8* %ptr1 unordered, align 1


  %res6 = load atomic volatile i8, i8* %ptr1 monotonic, align 1


  %res7 = load atomic volatile i8, i8* %ptr1 acquire, align 1


  %res8 = load atomic volatile i8, i8* %ptr1 seq_cst, align 1


  %res9 = load atomic i8, i8* %ptr1 singlethread unordered, align 1


  %res10 = load atomic i8, i8* %ptr1 singlethread monotonic, align 1


  %res11 = load atomic i8, i8* %ptr1 singlethread acquire, align 1


  %res12 = load atomic i8, i8* %ptr1 singlethread seq_cst, align 1


  %res13 = load atomic volatile i8, i8* %ptr1 singlethread unordered, align 1


  %res14 = load atomic volatile i8, i8* %ptr1 singlethread monotonic, align 1


  %res15 = load atomic volatile i8, i8* %ptr1 singlethread acquire, align 1


  %res16 = load atomic volatile i8, i8* %ptr1 singlethread seq_cst, align 1

  ret void
}

define void @store(){
entry:
  %ptr1 = alloca i8


  store i8 2, i8* %ptr1


  store volatile i8 2, i8* %ptr1


  store i8 2, i8* %ptr1, align 1


  store volatile i8 2, i8* %ptr1, align 1


  store i8 2, i8* %ptr1, !nontemporal !0


  store volatile i8 2, i8* %ptr1, !nontemporal !0


  store i8 2, i8* %ptr1, align 1, !nontemporal !0


  store volatile i8 2, i8* %ptr1, align 1, !nontemporal !0

  ret void
}

define void @storeAtomic(){
entry:
  %ptr1 = alloca i8


  store atomic i8 2, i8* %ptr1 unordered, align 1


  store atomic i8 2, i8* %ptr1 monotonic, align 1


  store atomic i8 2, i8* %ptr1 release, align 1


  store atomic i8 2, i8* %ptr1 seq_cst, align 1


  store atomic volatile i8 2, i8* %ptr1 unordered, align 1


  store atomic volatile i8 2, i8* %ptr1 monotonic, align 1


  store atomic volatile i8 2, i8* %ptr1 release, align 1


  store atomic volatile i8 2, i8* %ptr1 seq_cst, align 1


  store atomic i8 2, i8* %ptr1 singlethread unordered, align 1


  store atomic i8 2, i8* %ptr1 singlethread monotonic, align 1


  store atomic i8 2, i8* %ptr1 singlethread release, align 1


  store atomic i8 2, i8* %ptr1 singlethread seq_cst, align 1


  store atomic volatile i8 2, i8* %ptr1 singlethread unordered, align 1


  store atomic volatile i8 2, i8* %ptr1 singlethread monotonic, align 1


  store atomic volatile i8 2, i8* %ptr1 singlethread release, align 1


  store atomic volatile i8 2, i8* %ptr1 singlethread seq_cst, align 1

  ret void
}

define void @cmpxchg(i32* %ptr,i32 %cmp,i32 %new){
entry:
  



  %res1 = cmpxchg i32* %ptr, i32 %cmp, i32 %new monotonic monotonic



  %res2 = cmpxchg volatile i32* %ptr, i32 %cmp, i32 %new monotonic monotonic



  %res3 = cmpxchg i32* %ptr, i32 %cmp, i32 %new singlethread monotonic monotonic



  %res4 = cmpxchg volatile i32* %ptr, i32 %cmp, i32 %new singlethread monotonic monotonic




  %res5 = cmpxchg i32* %ptr, i32 %cmp, i32 %new acquire acquire



  %res6 = cmpxchg volatile i32* %ptr, i32 %cmp, i32 %new acquire acquire



  %res7 = cmpxchg i32* %ptr, i32 %cmp, i32 %new singlethread acquire acquire



  %res8 = cmpxchg volatile i32* %ptr, i32 %cmp, i32 %new singlethread acquire acquire




  %res9 = cmpxchg i32* %ptr, i32 %cmp, i32 %new release monotonic



  %res10 = cmpxchg volatile i32* %ptr, i32 %cmp, i32 %new release monotonic



  %res11 = cmpxchg i32* %ptr, i32 %cmp, i32 %new singlethread release monotonic



  %res12 = cmpxchg volatile i32* %ptr, i32 %cmp, i32 %new singlethread release monotonic




  %res13 = cmpxchg i32* %ptr, i32 %cmp, i32 %new acq_rel acquire



  %res14 = cmpxchg volatile i32* %ptr, i32 %cmp, i32 %new acq_rel acquire



  %res15 = cmpxchg i32* %ptr, i32 %cmp, i32 %new singlethread acq_rel acquire



  %res16 = cmpxchg volatile i32* %ptr, i32 %cmp, i32 %new singlethread acq_rel acquire




  %res17 = cmpxchg i32* %ptr, i32 %cmp, i32 %new seq_cst seq_cst



  %res18 = cmpxchg volatile i32* %ptr, i32 %cmp, i32 %new seq_cst seq_cst



  %res19 = cmpxchg i32* %ptr, i32 %cmp, i32 %new singlethread seq_cst seq_cst



  %res20 = cmpxchg volatile i32* %ptr, i32 %cmp, i32 %new singlethread seq_cst seq_cst

  ret void
}

define void @getelementptr({i8, i8}, {i8, i8}* %s, <4 x i8*> %ptrs, <4 x i64> %offsets ){
entry:

  %res1 = getelementptr {i8, i8}, {i8, i8}* %s, i32 1, i32 1


  %res2 = getelementptr inbounds {i8, i8}, {i8, i8}* %s, i32 1, i32 1


  %res3 = getelementptr i8, <4 x i8*> %ptrs, <4 x i64> %offsets

  ret void
}

!0 = metadata !{ i32 1 }
!1 = metadata !{}
