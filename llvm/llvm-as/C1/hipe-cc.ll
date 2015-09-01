



define void @zap(i32 %a, i32 %b) nounwind {
entry:
  
  
  
  
  %0 = call cc 11 {i32, i32, i32} @addfour(i32 undef, i32 undef, i32 %a, i32 %b, i32 8)
  %res = extractvalue {i32, i32, i32} %0, 2

  
  
  
  
  tail call void @foo(i32 undef, i32 undef, i32 1, i32 2, i32 %res) nounwind
  ret void
}

define cc 11 {i32, i32, i32} @addfour(i32 %hp, i32 %p, i32 %x, i32 %y, i32 %z) nounwind {
entry:
  
  
  %0 = add i32 %x, %y
  %1 = add i32 %0, %z

  
  %res = insertvalue {i32, i32, i32} undef, i32 %1, 2
  ret {i32, i32, i32} %res
}

define cc 11 void @foo(i32 %hp, i32 %p, i32 %arg0, i32 %arg1, i32 %arg2) nounwind {
entry:
  
  
  
  
  
  %hp_var   = alloca i32
  %p_var    = alloca i32
  %arg0_var = alloca i32
  %arg1_var = alloca i32
  %arg2_var = alloca i32
  store i32 %hp, i32* %hp_var
  store i32 %p, i32* %p_var
  store i32 %arg0, i32* %arg0_var
  store i32 %arg1, i32* %arg1_var
  store i32 %arg2, i32* %arg2_var

  
  
  
  
  %0 = load i32, i32* %hp_var
  %1 = load i32, i32* %p_var
  %2 = load i32, i32* %arg0_var
  %3 = load i32, i32* %arg1_var
  %4 = load i32, i32* %arg2_var
  
  tail call cc 11 void @bar(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) nounwind
  ret void
}

define cc 11 void @baz() nounwind {
  %tmp_clos = load i32, i32* @clos
  %tmp_clos2 = inttoptr i32 %tmp_clos to i32*
  %indirect_call = bitcast i32* %tmp_clos2 to void (i32, i32, i32)*
  
  
  tail call cc 11 void %indirect_call(i32 undef, i32 undef, i32 42) nounwind
  ret void
}

@clos = external constant i32
declare cc 11 void @bar(i32, i32, i32, i32, i32)
