


define i32 @shl32(i32 %x, i32 %shamt) nounwind uwtable readnone {
entry:
  %shl = shl i32 %x, %shamt






  ret i32 %shl
}

define i32 @shl32i(i32 %x) nounwind uwtable readnone {
entry:
  %shl = shl i32 %x, 5






  ret i32 %shl
}

define i32 @shl32p(i32* %p, i32 %shamt) nounwind uwtable readnone {
entry:
  %x = load i32, i32* %p
  %shl = shl i32 %x, %shamt






  ret i32 %shl
}

define i32 @shl32pi(i32* %p) nounwind uwtable readnone {
entry:
  %x = load i32, i32* %p
  %shl = shl i32 %x, 5






  ret i32 %shl
}

define i64 @shl64(i64 %x, i64 %shamt) nounwind uwtable readnone {
entry:
  %shl = shl i64 %x, %shamt



  ret i64 %shl
}

define i64 @shl64i(i64 %x) nounwind uwtable readnone {
entry:
  %shl = shl i64 %x, 7



  ret i64 %shl
}

define i64 @shl64p(i64* %p, i64 %shamt) nounwind uwtable readnone {
entry:
  %x = load i64, i64* %p
  %shl = shl i64 %x, %shamt



  ret i64 %shl
}

define i64 @shl64pi(i64* %p) nounwind uwtable readnone {
entry:
  %x = load i64, i64* %p
  %shl = shl i64 %x, 7



  ret i64 %shl
}

define i32 @lshr32(i32 %x, i32 %shamt) nounwind uwtable readnone {
entry:
  %shl = lshr i32 %x, %shamt






  ret i32 %shl
}

define i32 @lshr32p(i32* %p, i32 %shamt) nounwind uwtable readnone {
entry:
  %x = load i32, i32* %p
  %shl = lshr i32 %x, %shamt






  ret i32 %shl
}

define i64 @lshr64(i64 %x, i64 %shamt) nounwind uwtable readnone {
entry:
  %shl = lshr i64 %x, %shamt



  ret i64 %shl
}

define i64 @lshr64p(i64* %p, i64 %shamt) nounwind uwtable readnone {
entry:
  %x = load i64, i64* %p
  %shl = lshr i64 %x, %shamt



  ret i64 %shl
}

define i32 @ashr32(i32 %x, i32 %shamt) nounwind uwtable readnone {
entry:
  %shl = ashr i32 %x, %shamt






  ret i32 %shl
}

define i32 @ashr32p(i32* %p, i32 %shamt) nounwind uwtable readnone {
entry:
  %x = load i32, i32* %p
  %shl = ashr i32 %x, %shamt







  ret i32 %shl
}

define i64 @ashr64(i64 %x, i64 %shamt) nounwind uwtable readnone {
entry:
  %shl = ashr i64 %x, %shamt



  ret i64 %shl
}

define i64 @ashr64p(i64* %p, i64 %shamt) nounwind uwtable readnone {
entry:
  %x = load i64, i64* %p
  %shl = ashr i64 %x, %shamt



  ret i64 %shl
}
