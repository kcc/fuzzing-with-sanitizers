


define i32 @main() {
entry:
    %retval = alloca i32        
    %tmp = alloca i32       
    %x = alloca i75, align 16       
    %"alloca point" = bitcast i32 0 to i32      
    store i75 999, i75* %x, align 16
    store i32 0, i32* %tmp, align 4
    %tmp1 = load i32, i32* %tmp, align 4     
    store i32 %tmp1, i32* %retval, align 4
    br label %return

return:     
    %retval2 = load i32, i32* %retval        
    ret i32 %retval2
}
