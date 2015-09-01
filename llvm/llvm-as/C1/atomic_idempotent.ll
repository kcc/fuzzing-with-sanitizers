







define i8 @add8(i8* %p) {



  %1 = atomicrmw add i8* %p, i8 0 monotonic
  ret i8 %1
}

define i16 @or16(i16* %p) {



  %1 = atomicrmw or i16* %p, i16 0 acquire
  ret i16 %1
}

define i32 @xor32(i32* %p) {



  %1 = atomicrmw xor i32* %p, i32 0 release
  ret i32 %1
}

define i64 @sub64(i64* %p) {




  %1 = atomicrmw sub i64* %p, i64 0 seq_cst
  ret i64 %1
}

define i128 @or128(i128* %p) {


  %1 = atomicrmw or i128* %p, i128 0 monotonic
  ret i128 %1
}


define i32 @and32 (i32* %p) {



  %1 = atomicrmw and i32* %p, i32 -1 acq_rel
  ret i32 %1
}
