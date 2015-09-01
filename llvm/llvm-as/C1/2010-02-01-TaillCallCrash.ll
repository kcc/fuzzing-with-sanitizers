


%"char[]" = type [1 x i8]

@.str = external constant %"char[]", align 1      

define i32 @regex_subst() nounwind {
entry:
  %0 = tail call i32 bitcast (%"char[]"* @.str to i32 (i32)*)(i32 0) nounwind 
  ret i32 %0
}
