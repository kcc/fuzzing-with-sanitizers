


@sc16 = external global i16

define void @atomic_fetch_add16() nounwind {


entry:

  %t1 = atomicrmw add  i16* @sc16, i16 1 acquire




  %t2 = atomicrmw add  i16* @sc16, i16 3 acquire




  %t3 = atomicrmw add  i16* @sc16, i16 5 acquire




  %t4 = atomicrmw add  i16* @sc16, i16 %t3 acquire




  ret void


}

define void @atomic_fetch_sub16() nounwind {


  %t1 = atomicrmw sub  i16* @sc16, i16 1 acquire




  %t2 = atomicrmw sub  i16* @sc16, i16 3 acquire




  %t3 = atomicrmw sub  i16* @sc16, i16 5 acquire




  %t4 = atomicrmw sub  i16* @sc16, i16 %t3 acquire




  ret void


}

define void @atomic_fetch_and16() nounwind {


  %t1 = atomicrmw and  i16* @sc16, i16 3 acquire




  %t2 = atomicrmw and  i16* @sc16, i16 5 acquire






  %t3 = atomicrmw and  i16* @sc16, i16 %t2 acquire




  ret void


}

define void @atomic_fetch_or16() nounwind {


  %t1 = atomicrmw or   i16* @sc16, i16 3 acquire




  %t2 = atomicrmw or   i16* @sc16, i16 5 acquire






  %t3 = atomicrmw or   i16* @sc16, i16 %t2 acquire




  ret void


}

define void @atomic_fetch_xor16() nounwind {


  %t1 = atomicrmw xor  i16* @sc16, i16 3 acquire




  %t2 = atomicrmw xor  i16* @sc16, i16 5 acquire






  %t3 = atomicrmw xor  i16* @sc16, i16 %t2 acquire




  ret void


}

define void @atomic_fetch_nand16(i16 %x) nounwind {


  %t1 = atomicrmw nand i16* @sc16, i16 %x acquire








  ret void


}

define void @atomic_fetch_max16(i16 %x) nounwind {
  %t1 = atomicrmw max  i16* @sc16, i16 %x acquire













  ret void


}

define void @atomic_fetch_min16(i16 %x) nounwind {
  %t1 = atomicrmw min  i16* @sc16, i16 %x acquire













  ret void


}

define void @atomic_fetch_umax16(i16 %x) nounwind {
  %t1 = atomicrmw umax i16* @sc16, i16 %x acquire













  ret void


}

define void @atomic_fetch_umin16(i16 %x) nounwind {
  %t1 = atomicrmw umin i16* @sc16, i16 %x acquire













  ret void


}

define void @atomic_fetch_cmpxchg16() nounwind {
  %t1 = cmpxchg i16* @sc16, i16 0, i16 1 acquire acquire




  ret void


}

define void @atomic_fetch_store16(i16 %x) nounwind {
  store atomic i16 %x, i16* @sc16 release, align 4




  ret void


}

define void @atomic_fetch_swap16(i16 %x) nounwind {
  %t1 = atomicrmw xchg i16* @sc16, i16 %x acquire




  ret void


}
