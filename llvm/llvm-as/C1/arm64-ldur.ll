

define i64 @_f0(i64* %p) {



  %tmp = getelementptr inbounds i64, i64* %p, i64 -1
  %ret = load i64, i64* %tmp, align 2
  ret i64 %ret
}
define i32 @_f1(i32* %p) {



  %tmp = getelementptr inbounds i32, i32* %p, i64 -1
  %ret = load i32, i32* %tmp, align 2
  ret i32 %ret
}
define i16 @_f2(i16* %p) {



  %tmp = getelementptr inbounds i16, i16* %p, i64 -1
  %ret = load i16, i16* %tmp, align 2
  ret i16 %ret
}
define i8 @_f3(i8* %p) {



  %tmp = getelementptr inbounds i8, i8* %p, i64 -1
  %ret = load i8, i8* %tmp, align 2
  ret i8 %ret
}

define i64 @zext32(i8* %a) nounwind ssp {



  %p = getelementptr inbounds i8, i8* %a, i64 -12
  %tmp1 = bitcast i8* %p to i32*
  %tmp2 = load i32, i32* %tmp1, align 4
  %ret = zext i32 %tmp2 to i64

  ret i64 %ret
}
define i64 @zext16(i8* %a) nounwind ssp {



  %p = getelementptr inbounds i8, i8* %a, i64 -12
  %tmp1 = bitcast i8* %p to i16*
  %tmp2 = load i16, i16* %tmp1, align 2
  %ret = zext i16 %tmp2 to i64

  ret i64 %ret
}
define i64 @zext8(i8* %a) nounwind ssp {



  %p = getelementptr inbounds i8, i8* %a, i64 -12
  %tmp2 = load i8, i8* %p, align 1
  %ret = zext i8 %tmp2 to i64

  ret i64 %ret
}
