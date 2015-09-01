

define i32 @exchange_and_add(i32* %mem, i32 %val) nounwind {


  %tmp = atomicrmw add i32* %mem, i32 %val monotonic

  ret i32 %tmp
}

define i32 @exchange_and_cmp(i32* %mem) nounwind {


  %tmppair = cmpxchg i32* %mem, i32 0, i32 1 monotonic monotonic
  %tmp = extractvalue { i32, i1 } %tmppair, 0


  ret i32 %tmp
}

define i32 @exchange(i32* %mem, i32 %val) nounwind {


  %tmp = atomicrmw xchg i32* %mem, i32 1 monotonic

  ret i32 %tmp
}
