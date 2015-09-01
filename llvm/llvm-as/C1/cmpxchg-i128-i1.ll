

define i1 @try_cmpxchg(i128* %addr, i128 %desired, i128 %new) {





  %pair = cmpxchg i128* %addr, i128 %desired, i128 %new seq_cst seq_cst
  %success = extractvalue { i128, i1 } %pair, 1
  ret i1 %success
}

define void @cmpxchg_flow(i128* %addr, i128 %desired, i128 %new) {





  %pair = cmpxchg i128* %addr, i128 %desired, i128 %new seq_cst seq_cst
  %success = extractvalue { i128, i1 } %pair, 1
  br i1 %success, label %true, label %false

true:
  call void @foo()
  ret void

false:
  call void @bar()
  ret void
}


define i1 @cmpxchg_arithcmp(i128* %addr, i128 %desired, i128 %new) {




  %pair = cmpxchg i128* %addr, i128 %desired, i128 %new seq_cst seq_cst
  %oldval = extractvalue { i128, i1 } %pair, 0
  %success = icmp sge i128 %oldval, %desired
  ret i1 %success
}

define i128 @cmpxchg_zext(i128* %addr, i128 %desired, i128 %new) {





  %pair = cmpxchg i128* %addr, i128 %desired, i128 %new seq_cst seq_cst
  %success = extractvalue { i128, i1 } %pair, 1
  %mask = zext i1 %success to i128
  ret i128 %mask
}


define i128 @cmpxchg_use_eflags_and_val(i128* %addr, i128 %offset) {





entry:
  %init = load atomic i128, i128* %addr seq_cst, align 16
  br label %loop

loop:
  %old = phi i128 [%init, %entry], [%oldval, %loop]
  %new = add i128 %old, %offset

  %pair = cmpxchg i128* %addr, i128 %old, i128 %new seq_cst seq_cst
  %oldval = extractvalue { i128, i1 } %pair, 0
  %success = extractvalue { i128, i1 } %pair, 1

  br i1 %success, label %done, label %loop

done:
  ret i128 %old
}

declare void @foo()
declare void @bar()
