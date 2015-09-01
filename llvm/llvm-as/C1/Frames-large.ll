






target triple = "powerpc-apple-darwin8"

define i32* @f1() nounwind {
        %tmp = alloca i32, i32 8191             
        ret i32* %tmp
}









































