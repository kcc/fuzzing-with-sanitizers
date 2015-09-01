

define i1 @try_cmpxchg(i32* %addr, i32 %desired, i32 %new) {





  %pair = cmpxchg i32* %addr, i32 %desired, i32 %new seq_cst seq_cst
  %success = extractvalue { i32, i1 } %pair, 1
  ret i1 %success
}

define void @cmpxchg_flow(i64* %addr, i64 %desired, i64 %new) {





  %pair = cmpxchg i64* %addr, i64 %desired, i64 %new seq_cst seq_cst
  %success = extractvalue { i64, i1 } %pair, 1
  br i1 %success, label %true, label %false

true:
  call void @foo()
  ret void

false:
  call void @bar()
  ret void
}

define i64 @cmpxchg_sext(i32* %addr, i32 %desired, i32 %new) {





  %pair = cmpxchg i32* %addr, i32 %desired, i32 %new seq_cst seq_cst
  %success = extractvalue { i32, i1 } %pair, 1
  %mask = sext i1 %success to i64
  ret i64 %mask
}

define i32 @cmpxchg_zext(i32* %addr, i32 %desired, i32 %new) {





  %pair = cmpxchg i32* %addr, i32 %desired, i32 %new seq_cst seq_cst
  %success = extractvalue { i32, i1 } %pair, 1
  %mask = zext i1 %success to i32
  ret i32 %mask
}


define i32 @cmpxchg_use_eflags_and_val(i32* %addr, i32 %offset) {









  

entry:
  %init = load atomic i32, i32* %addr seq_cst, align 4
  br label %loop

loop:
  %old = phi i32 [%init, %entry], [%oldval, %loop]
  %new = add i32 %old, %offset
  %pair = cmpxchg i32* %addr, i32 %old, i32 %new seq_cst seq_cst
  %oldval = extractvalue { i32, i1 } %pair, 0
  %success = extractvalue { i32, i1 } %pair, 1
  br i1 %success, label %done, label %loop

done:
  ret i32 %oldval
}

declare void @foo()
declare void @bar()
