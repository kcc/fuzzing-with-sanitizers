



define i64 @exchange_and_add(i64* %mem, i64 %val) nounwind {


  %tmp = atomicrmw add i64* %mem, i64 %val monotonic

  ret i64 %tmp
}

define i8 @exchange_and_add8(i8* %mem, i8 %val) nounwind {


  %tmp = atomicrmw add i8* %mem, i8 %val monotonic

  ret i8 %tmp
}

define i16 @exchange_and_add16(i16* %mem, i16 %val) nounwind {


  %tmp = atomicrmw add i16* %mem, i16 %val monotonic

  ret i16 %tmp
}

define i64 @exchange_and_cmp(i64* %mem) nounwind {


  %tmppair = cmpxchg i64* %mem, i64 0, i64 1 monotonic monotonic
  %tmp = extractvalue { i64, i1 } %tmppair, 0


  ret i64 %tmp
}

define i8 @exchange_and_cmp8(i8* %mem) nounwind {


  %tmppair = cmpxchg i8* %mem, i8 0, i8 1 monotonic monotonic
  %tmp = extractvalue { i8, i1 } %tmppair, 0


  ret i8 %tmp
}

define i16 @exchange_and_cmp16(i16* %mem) nounwind {


  %tmppair = cmpxchg i16* %mem, i16 0, i16 1 monotonic monotonic
  %tmp = extractvalue { i16, i1 } %tmppair, 0


  ret i16 %tmp
}

define i64 @exchange(i64* %mem, i64 %val) nounwind {


  %tmp = atomicrmw xchg i64* %mem, i64 1 monotonic

  ret i64 %tmp
}

define i8 @exchange8(i8* %mem, i8 %val) nounwind {


  %tmp = atomicrmw xchg i8* %mem, i8 1 monotonic

  ret i8 %tmp
}

define i16 @exchange16(i16* %mem, i16 %val) nounwind {


  %tmp = atomicrmw xchg i16* %mem, i16 1 monotonic

  ret i16 %tmp
}

define void @atomic_store(i64* %mem, i64 %val) nounwind {
entry:

  store atomic i64 %val, i64* %mem release, align 64



  ret void
}

define i64 @atomic_load(i64* %mem) nounwind {
entry:

  %tmp = load atomic i64, i64* %mem acquire, align 64



  ret i64 %tmp
}

