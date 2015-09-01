


@g_62 = external global i16             
@g_487 = external global i32            

define i32 @func_42(i32 %p_43, i32 %p_44, i32 %p_45, i32 %p_46) nounwind {
entry:
        %0 = load i16, i16* @g_62, align 2           
        %1 = load i32, i32* @g_487, align 4          
        %2 = trunc i16 %0 to i8         
        %3 = trunc i32 %1 to i8         
        %4 = tail call i32 (...) @func_7(i64 -4455561449541442965, i32 1)
nounwind             
        %5 = trunc i32 %4 to i8         
        %6 = mul i8 %3, %2              
        %7 = mul i8 %6, %5              
        %8 = sext i8 %7 to i16          
        %9 = tail call i32 @func_85(i16 signext %8, i32 1, i32 1) nounwind     
        
        ret i32 undef
}

declare i32 @func_7(...)

declare i32 @func_85(i16 signext, i32, i32)
