



@sc32 = external global i32

define void @atomic_fetch_add32() nounwind {

entry:

  %t1 = atomicrmw add  i32* @sc32, i32 1 acquire


  %t2 = atomicrmw add  i32* @sc32, i32 3 acquire


  %t3 = atomicrmw add  i32* @sc32, i32 5 acquire


  %t4 = atomicrmw add  i32* @sc32, i32 %t3 acquire


  ret void

}

define void @atomic_fetch_sub32() nounwind {

  %t1 = atomicrmw sub  i32* @sc32, i32 1 acquire


  %t2 = atomicrmw sub  i32* @sc32, i32 3 acquire


  %t3 = atomicrmw sub  i32* @sc32, i32 5 acquire


  %t4 = atomicrmw sub  i32* @sc32, i32 %t3 acquire


  ret void

}

define void @atomic_fetch_and32() nounwind {

  %t1 = atomicrmw and  i32* @sc32, i32 3 acquire


  %t2 = atomicrmw and  i32* @sc32, i32 5 acquire



  %t3 = atomicrmw and  i32* @sc32, i32 %t2 acquire


  ret void

}

define void @atomic_fetch_or32() nounwind {

  %t1 = atomicrmw or   i32* @sc32, i32 3 acquire


  %t2 = atomicrmw or   i32* @sc32, i32 5 acquire



  %t3 = atomicrmw or   i32* @sc32, i32 %t2 acquire


  ret void

}

define void @atomic_fetch_xor32() nounwind {

  %t1 = atomicrmw xor  i32* @sc32, i32 3 acquire


  %t2 = atomicrmw xor  i32* @sc32, i32 5 acquire



  %t3 = atomicrmw xor  i32* @sc32, i32 %t2 acquire


  ret void

}

define void @atomic_fetch_nand32(i32 %x) nounwind {

  %t1 = atomicrmw nand i32* @sc32, i32 %x acquire




  ret void

}

define void @atomic_fetch_max32(i32 %x) nounwind {


  %t1 = atomicrmw max  i32* @sc32, i32 %x acquire









  ret void


}

define void @atomic_fetch_min32(i32 %x) nounwind {



  %t1 = atomicrmw min  i32* @sc32, i32 %x acquire









  ret void


}

define void @atomic_fetch_umax32(i32 %x) nounwind {



  %t1 = atomicrmw umax i32* @sc32, i32 %x acquire









  ret void


}

define void @atomic_fetch_umin32(i32 %x) nounwind {



  %t1 = atomicrmw umin i32* @sc32, i32 %x acquire









  ret void


}

define void @atomic_fetch_cmpxchg32() nounwind {


  %t1 = cmpxchg i32* @sc32, i32 0, i32 1 acquire acquire


  ret void

}

define void @atomic_fetch_store32(i32 %x) nounwind {


  store atomic i32 %x, i32* @sc32 release, align 4


  ret void

}

define void @atomic_fetch_swap32(i32 %x) nounwind {


  %t1 = atomicrmw xchg i32* @sc32, i32 %x acquire


  ret void

}
