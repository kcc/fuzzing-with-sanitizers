





























        %Results = type { float, float, float }
@fmtArg = internal global [39 x i8] c"ioff = %u\09fval = 0x%p\09&fval[2] = 0x%p\0A\00"          

declare i32 @printf(i8*, ...)

define i32 @main() {
        %fval = alloca %Results, i32 4          
        %i = add i32 1, 0               
        %iscale = mul i32 %i, -1                
        %ioff = add i32 %iscale, 3              
        %ioff.upgrd.1 = zext i32 %ioff to i64           
        %fptr = getelementptr %Results, %Results* %fval, i64 %ioff.upgrd.1                
        %castFmt = getelementptr [39 x i8], [39 x i8]* @fmtArg, i64 0, i64 0               
        call i32 (i8*, ...) @printf( i8* %castFmt, i32 %ioff, %Results* %fval, %Results* %fptr )               
        ret i32 0
}

