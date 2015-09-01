

@sc64 = external global i64

define void @atomic_fetch_add64() nounwind {


entry:
  %t1 = atomicrmw add  i64* @sc64, i64 1 acquire


  %t2 = atomicrmw add  i64* @sc64, i64 3 acquire


  %t3 = atomicrmw add  i64* @sc64, i64 5 acquire


  %t4 = atomicrmw add  i64* @sc64, i64 %t3 acquire


  ret void

}

define void @atomic_fetch_sub64() nounwind {


  %t1 = atomicrmw sub  i64* @sc64, i64 1 acquire


  %t2 = atomicrmw sub  i64* @sc64, i64 3 acquire


  %t3 = atomicrmw sub  i64* @sc64, i64 5 acquire


  %t4 = atomicrmw sub  i64* @sc64, i64 %t3 acquire


  ret void

}

define void @atomic_fetch_and64() nounwind {


  %t1 = atomicrmw and  i64* @sc64, i64 3 acquire


  %t2 = atomicrmw and  i64* @sc64, i64 5 acquire



  %t3 = atomicrmw and  i64* @sc64, i64 %t2 acquire


  ret void

}

define void @atomic_fetch_or64() nounwind {


  %t1 = atomicrmw or   i64* @sc64, i64 3 acquire


  %t2 = atomicrmw or   i64* @sc64, i64 5 acquire



  %t3 = atomicrmw or   i64* @sc64, i64 %t2 acquire


  ret void

}

define void @atomic_fetch_xor64() nounwind {


  %t1 = atomicrmw xor  i64* @sc64, i64 3 acquire


  %t2 = atomicrmw xor  i64* @sc64, i64 5 acquire



  %t3 = atomicrmw xor  i64* @sc64, i64 %t2 acquire


  ret void

}

define void @atomic_fetch_nand64(i64 %x) nounwind {


  %t1 = atomicrmw nand i64* @sc64, i64 %x acquire










  ret void


}

define void @atomic_fetch_max64(i64 %x) nounwind {


  %t1 = atomicrmw max  i64* @sc64, i64 %x acquire












  ret void


}

define void @atomic_fetch_min64(i64 %x) nounwind {


  %t1 = atomicrmw min  i64* @sc64, i64 %x acquire












  ret void


}

define void @atomic_fetch_umax64(i64 %x) nounwind {


  %t1 = atomicrmw umax i64* @sc64, i64 %x acquire












  ret void


}

define void @atomic_fetch_umin64(i64 %x) nounwind {


  %t1 = atomicrmw umin i64* @sc64, i64 %x acquire












  ret void


}

define void @atomic_fetch_cmpxchg64() nounwind {


  %t1 = cmpxchg i64* @sc64, i64 0, i64 1 acquire acquire




  ret void


}

define void @atomic_fetch_store64(i64 %x) nounwind {


  store atomic i64 %x, i64* @sc64 release, align 8




  ret void


}

define void @atomic_fetch_swap64(i64 %x) nounwind {


  %t1 = atomicrmw xchg i64* @sc64, i64 %x acquire




  ret void


}
