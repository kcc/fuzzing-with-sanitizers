

@var = global i128 0

define i128 @val_compare_and_swap(i128* %p, i128 %oldval, i128 %newval) {







  %pair = cmpxchg i128* %p, i128 %oldval, i128 %newval acquire acquire
  %val = extractvalue { i128, i1 } %pair, 0
  ret i128 %val
}

define void @fetch_and_nand(i128* %p, i128 %bits) {









  









  %val = atomicrmw nand i128* %p, i128 %bits release
  store i128 %val, i128* @var, align 16
  ret void
}

define void @fetch_and_or(i128* %p, i128 %bits) {







  










  %val = atomicrmw or i128* %p, i128 %bits seq_cst
  store i128 %val, i128* @var, align 16
  ret void
}

define void @fetch_and_add(i128* %p, i128 %bits) {







  










  %val = atomicrmw add i128* %p, i128 %bits seq_cst
  store i128 %val, i128* @var, align 16
  ret void
}

define void @fetch_and_sub(i128* %p, i128 %bits) {







  










  %val = atomicrmw sub i128* %p, i128 %bits seq_cst
  store i128 %val, i128* @var, align 16
  ret void
}

define void @fetch_and_min(i128* %p, i128 %bits) {


























  %val = atomicrmw min i128* %p, i128 %bits seq_cst
  store i128 %val, i128* @var, align 16
  ret void
}

define void @fetch_and_max(i128* %p, i128 %bits) {


























  %val = atomicrmw max i128* %p, i128 %bits seq_cst
  store i128 %val, i128* @var, align 16
  ret void
}

define void @fetch_and_umin(i128* %p, i128 %bits) {


























  %val = atomicrmw umin i128* %p, i128 %bits seq_cst
  store i128 %val, i128* @var, align 16
  ret void
}

define void @fetch_and_umax(i128* %p, i128 %bits) {


























  %val = atomicrmw umax i128* %p, i128 %bits seq_cst
  store i128 %val, i128* @var, align 16
  ret void
}

define i128 @atomic_load_seq_cst(i128* %p) {








   %r = load atomic i128, i128* %p seq_cst, align 16
   ret i128 %r
}

define i128 @atomic_load_relaxed(i128* %p) {








   %r = load atomic i128, i128* %p monotonic, align 16
   ret i128 %r
}

define void @atomic_store_seq_cst(i128* %p, i128 %in) {












   store atomic i128 %in, i128* %p seq_cst, align 16
   ret void
}

define void @atomic_store_release(i128* %p, i128 %in) {











   store atomic i128 %in, i128* %p release, align 16
   ret void
}

define void @atomic_store_relaxed(i128* %p, i128 %in) {











   store atomic i128 %in, i128* %p unordered, align 16
   ret void
}
