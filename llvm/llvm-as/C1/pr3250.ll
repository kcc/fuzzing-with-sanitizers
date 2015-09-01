


declare i32 @safe_sub_func_short_u_u(i16 signext, i16 signext) nounwind

define i32 @func_106(i32 %p_107) nounwind {
entry:
        %0 = tail call i32 (...) @safe_div_(i32 %p_107, i32 1) nounwind       
        
        %1 = lshr i32 %0, -9            
        %2 = trunc i32 %1 to i16                
        %3 = tail call i32 @safe_sub_func_short_u_u(i16 signext 1, i16 signext
%2) nounwind             
        ret i32 undef
}

declare i32 @safe_div_(...)
