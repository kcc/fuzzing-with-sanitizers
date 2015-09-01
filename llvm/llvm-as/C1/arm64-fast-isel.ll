

define void @t0(i32 %a) nounwind {
entry:





  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr
  %tmp = load i32, i32* %a.addr
  store i32 %tmp, i32* %a.addr
  ret void
}

define void @t1(i64 %a) nounwind {





  %a.addr = alloca i64, align 4
  store i64 %a, i64* %a.addr
  %tmp = load i64, i64* %a.addr
  store i64 %tmp, i64* %a.addr
  ret void
}

define zeroext i1 @i1(i1 %a) nounwind {
entry:








  %a.addr = alloca i1, align 1
  store i1 %a, i1* %a.addr, align 1
  %0 = load i1, i1* %a.addr, align 1
  ret i1 %0
}

define i32 @t2(i32 *%ptr) nounwind {
entry:



  %0 = getelementptr i32, i32 *%ptr, i32 -1
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}

define i32 @t3(i32 *%ptr) nounwind {
entry:



  %0 = getelementptr i32, i32 *%ptr, i32 -64
  %1 = load i32, i32* %0, align 4
  ret i32 %1
}

define void @t4(i32 *%ptr) nounwind {
entry:



  %0 = getelementptr i32, i32 *%ptr, i32 -1
  store i32 0, i32* %0, align 4
  ret void
}

define void @t5(i32 *%ptr) nounwind {
entry:



  %0 = getelementptr i32, i32 *%ptr, i32 -64
  store i32 0, i32* %0, align 4
  ret void
}

define void @t6() nounwind {


  tail call void @llvm.trap()
  ret void
}

declare void @llvm.trap() nounwind

define void @ands(i32* %addr) {



entry:
  %cond91 = select i1 undef, i32 1, i32 2
  store i32 %cond91, i32* %addr, align 4
  ret void
}

define i64 @mul_umul(i64 %arg) {



entry:
  %sub.ptr.div = sdiv exact i64 %arg, 8
  %tmp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %sub.ptr.div, i64 8)
  %tmp1 = extractvalue { i64, i1 } %tmp, 0
  ret i64 %tmp1
}

declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64)

define void @logicalReg() {





entry:
  br i1 undef, label %cond.end, label %cond.false

cond.false:
  %cond = select i1 undef, i1 true, i1 false
  br label %cond.end

cond.end:
  %cond13 = phi i1 [ %cond, %cond.false ], [ true, %entry ]
  ret void
}

