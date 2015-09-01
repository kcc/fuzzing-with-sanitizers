

%rt1 = type { i32, { i8, %rt2, i8 }, i32 }
%rt2 = type { i64, { i6, %rt3 } }
%rt3 = type { %rt1 }

define i32 @main() nounwind {
entry:
  
  
  
  %0 = alloca %rt2
  ret i32 0
}
