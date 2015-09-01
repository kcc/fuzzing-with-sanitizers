
define void @test(i128* %a) nounwind {
entry:

  %0 = cmpxchg i128* %a, i128 1, i128 1 seq_cst seq_cst

  %1 = atomicrmw xchg i128* %a, i128 1 seq_cst

  %2 = atomicrmw add i128* %a, i128 1 seq_cst

  %3 = atomicrmw sub i128* %a, i128 1 seq_cst

  %4 = atomicrmw and i128* %a, i128 1 seq_cst

  %5 = atomicrmw nand i128* %a, i128 1 seq_cst

  %6 = atomicrmw or i128* %a, i128 1 seq_cst

  %7 = atomicrmw xor i128* %a, i128 1 seq_cst
  ret void
}
