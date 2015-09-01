






target datalayout = "e-p:32:32"
@str = internal constant [6 x i8] c"%llx\0A\00"         

declare i32 @printf(i8*, ...)

define i32 @main(i32 %x, i8** %a) {
entry:
        %tmp = getelementptr [6 x i8], [6 x i8]* @str, i32 0, i64 0               
        %tmp1 = load i8*, i8** %a            
        %tmp2 = ptrtoint i8* %tmp1 to i32               
        %tmp3 = zext i32 %tmp2 to i64           
        %tmp.upgrd.1 = call i32 (i8*, ...) @printf( i8* %tmp, i64 %tmp3 )              
        ret i32 0
}

