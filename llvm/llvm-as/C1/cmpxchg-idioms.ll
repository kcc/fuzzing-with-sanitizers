

define i32 @test_return(i32* %p, i32 %oldval, i32 %newval) {
























  %pair = cmpxchg i32* %p, i32 %oldval, i32 %newval seq_cst seq_cst
  %success = extractvalue { i32, i1 } %pair, 1
  %conv = zext i1 %success to i32
  ret i32 %conv
}

define i1 @test_return_bool(i8* %value, i8 %oldValue, i8 %newValue) {














  











  %pair = cmpxchg i8* %value, i8 %oldValue, i8 %newValue acq_rel monotonic
  %success = extractvalue { i8, i1 } %pair, 1
  %failure = xor i1 %success, 1
  ret i1 %failure
}

define void @test_conditional(i32* %p, i32 %oldval, i32 %newval) {






















  %pair = cmpxchg i32* %p, i32 %oldval, i32 %newval seq_cst seq_cst
  %success = extractvalue { i32, i1 } %pair, 1
  br i1 %success, label %true, label %false

true:
  tail call void @bar() #2
  br label %end

false:
  tail call void @baz() #2
  br label %end

end:
  ret void
}

declare void @bar()
declare void @baz()
