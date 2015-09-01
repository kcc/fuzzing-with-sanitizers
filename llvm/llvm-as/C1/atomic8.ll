


@sc8 = external global i8

define void @atomic_fetch_add8() nounwind {


entry:

  %t1 = atomicrmw add  i8* @sc8, i8 1 acquire




  %t2 = atomicrmw add  i8* @sc8, i8 3 acquire




  %t3 = atomicrmw add  i8* @sc8, i8 5 acquire




  %t4 = atomicrmw add  i8* @sc8, i8 %t3 acquire




  ret void


}

define void @atomic_fetch_sub8() nounwind {


  %t1 = atomicrmw sub  i8* @sc8, i8 1 acquire




  %t2 = atomicrmw sub  i8* @sc8, i8 3 acquire




  %t3 = atomicrmw sub  i8* @sc8, i8 5 acquire




  %t4 = atomicrmw sub  i8* @sc8, i8 %t3 acquire




  ret void


}

define void @atomic_fetch_and8() nounwind {


  %t1 = atomicrmw and  i8* @sc8, i8 3 acquire




  %t2 = atomicrmw and  i8* @sc8, i8 5 acquire






  %t3 = atomicrmw and  i8* @sc8, i8 %t2 acquire




  ret void


}

define void @atomic_fetch_or8() nounwind {


  %t1 = atomicrmw or   i8* @sc8, i8 3 acquire




  %t2 = atomicrmw or   i8* @sc8, i8 5 acquire






  %t3 = atomicrmw or   i8* @sc8, i8 %t2 acquire




  ret void


}

define void @atomic_fetch_xor8() nounwind {


  %t1 = atomicrmw xor  i8* @sc8, i8 3 acquire




  %t2 = atomicrmw xor  i8* @sc8, i8 5 acquire






  %t3 = atomicrmw xor  i8* @sc8, i8 %t2 acquire




  ret void


}

define void @atomic_fetch_nand8(i8 %x) nounwind {


  %t1 = atomicrmw nand i8* @sc8, i8 %x acquire








  ret void


}

define void @atomic_fetch_max8(i8 %x) nounwind {


  %t1 = atomicrmw max  i8* @sc8, i8 %x acquire











  ret void


}

define void @atomic_fetch_min8(i8 %x) nounwind {


  %t1 = atomicrmw min  i8* @sc8, i8 %x acquire











  ret void


}

define void @atomic_fetch_umax8(i8 %x) nounwind {


  %t1 = atomicrmw umax i8* @sc8, i8 %x acquire











  ret void


}

define void @atomic_fetch_umin8(i8 %x) nounwind {


  %t1 = atomicrmw umin i8* @sc8, i8 %x acquire











  ret void


}

define void @atomic_fetch_cmpxchg8() nounwind {


  %t1 = cmpxchg i8* @sc8, i8 0, i8 1 acquire acquire




  ret void


}

define void @atomic_fetch_store8(i8 %x) nounwind {


  store atomic i8 %x, i8* @sc8 release, align 4




  ret void


}

define void @atomic_fetch_swap8(i8 %x) nounwind {


  %t1 = atomicrmw xchg i8* @sc8, i8 %x acquire




  ret void


}
