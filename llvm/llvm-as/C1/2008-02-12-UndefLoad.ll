


%struct.anon = type { i32, i8, i8, i8, i8 }

define i32 @a() {
entry:
        %c = alloca %struct.anon                
        %tmp = getelementptr %struct.anon, %struct.anon* %c, i32 0, i32 0             
        %tmp1 = getelementptr i32, i32* %tmp, i32 1          
        %tmp2 = load i32, i32* %tmp1, align 4                
        %tmp3 = or i32 %tmp2, 11                
        %tmp4 = and i32 %tmp3, -21              
        store i32 %tmp4, i32* %tmp1, align 4
        %call = call i32 (...) @x( %struct.anon* %c )          
        ret i32 undef
}


declare i32 @x(...)
