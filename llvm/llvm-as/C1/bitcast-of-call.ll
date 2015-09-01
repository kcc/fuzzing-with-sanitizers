


define i32* @f(i8* %x) {
entry:
        %tmp = call i8* @m( i32 12 )            
        %tmp1 = bitcast i8* %tmp to i32*                
        %tmp2 = bitcast i8* %tmp to i32*                
        ret i32* %tmp2
}

declare i8* @m(i32)
