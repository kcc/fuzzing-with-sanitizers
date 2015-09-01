














target datalayout = "e-p:32:32"
@silly = external constant i32          

declare void @bzero(i8*, i32)

declare void @bcopy(i8*, i8*, i32)

declare i32 @bcmp(i8*, i8*, i32)

declare i32 @fputs(i8*, i8*)

declare i32 @fputs_unlocked(i8*, i8*)

define i32 @function(i32 %a.1) {
entry:
        %a.0 = alloca i32               
        %result = alloca i32            
        store i32 %a.1, i32* %a.0
        %tmp.0 = load i32, i32* %a.0         
        %tmp.1 = load i32, i32* @silly               
        %tmp.2 = add i32 %tmp.0, %tmp.1         
        store i32 %tmp.2, i32* %result
        br label %return

return:         
        %tmp.3 = load i32, i32* %result              
        ret i32 %tmp.3
}

