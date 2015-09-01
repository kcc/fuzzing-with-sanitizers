



define void @t1(i64* %p, i32 %b) nounwind {
entry:
  %p.addr = alloca i64*, align 8
  store i64* %p, i64** %p.addr, align 8
  %tmp = load i64*, i64** %p.addr, align 8



  %0 = atomicrmw or i64* %tmp, i64 2147483648 seq_cst
  ret void
}

define void @t2(i64* %p, i32 %b) nounwind {
entry:
  %p.addr = alloca i64*, align 8
  store i64* %p, i64** %p.addr, align 8
  %tmp = load i64*, i64** %p.addr, align 8


  %0 = atomicrmw or i64* %tmp, i64 2147483644 seq_cst
  ret void
}
