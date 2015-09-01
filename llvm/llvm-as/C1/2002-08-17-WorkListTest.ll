




@t0 = internal global [4 x i8] c"foo\00"                
@t1 = internal global [4 x i8] c"bar\00"                
@s1 = internal global [1 x i8*] [ i8* getelementptr ([4 x i8], [4 x i8]* @t0, i32 0, i32 0) ]             
@s2 = internal global [1 x i8*] [ i8* getelementptr ([4 x i8], [4 x i8]* @t1, i64 0, i64 0) ]             
@b = internal global i32* @a            
@a = internal global i32 7              

