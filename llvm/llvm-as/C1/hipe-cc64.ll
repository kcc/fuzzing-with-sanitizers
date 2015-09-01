



define void @zap(i64 %a, i64 %b) nounwind {
entry:
  
  
  
  
  
  
  %0 = call cc 11 {i64, i64, i64} @addfour(i64 undef, i64 undef, i64 %a, i64 %b, i64 8, i64 9)
  %res = extractvalue {i64, i64, i64} %0, 2

  
  
  
  
  
  tail call void @foo(i64 undef, i64 undef, i64 1, i64 2, i64 3, i64 %res) nounwind
  ret void
}

define cc 11 {i64, i64, i64} @addfour(i64 %hp, i64 %p, i64 %x, i64 %y, i64 %z, i64 %w) nounwind {
entry:
  
  
  
  %0 = add i64 %x, %y
  %1 = add i64 %0, %z
  %2 = add i64 %1, %w

  
  %res = insertvalue {i64, i64, i64} undef, i64 %2, 2
  ret {i64, i64, i64} %res
}

define cc 11 void @foo(i64 %hp, i64 %p, i64 %arg0, i64 %arg1, i64 %arg2, i64 %arg3) nounwind {
entry:
  
  
  
  
  
  
  %hp_var   = alloca i64
  %p_var    = alloca i64
  %arg0_var = alloca i64
  %arg1_var = alloca i64
  %arg2_var = alloca i64
  %arg3_var = alloca i64
  store i64 %hp, i64* %hp_var
  store i64 %p, i64* %p_var
  store i64 %arg0, i64* %arg0_var
  store i64 %arg1, i64* %arg1_var
  store i64 %arg2, i64* %arg2_var
  store i64 %arg3, i64* %arg3_var

  
  
  
  
  
  %0 = load i64, i64* %hp_var
  %1 = load i64, i64* %p_var
  %2 = load i64, i64* %arg0_var
  %3 = load i64, i64* %arg1_var
  %4 = load i64, i64* %arg2_var
  %5 = load i64, i64* %arg3_var
  
  tail call cc 11 void @bar(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) nounwind
  ret void
}

define cc 11 void @baz() nounwind {
  %tmp_clos = load i64, i64* @clos
  %tmp_clos2 = inttoptr i64 %tmp_clos to i64*
  %indirect_call = bitcast i64* %tmp_clos2 to void (i64, i64, i64)*
  
  
  tail call cc 11 void %indirect_call(i64 undef, i64 undef, i64 42) nounwind
  ret void
}

@clos = external constant i64
declare cc 11 void @bar(i64, i64, i64, i64, i64, i64)
