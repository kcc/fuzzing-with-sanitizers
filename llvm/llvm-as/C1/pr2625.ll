


define i32 @main({ i32, { i32 } }*) {
entry:
        %state = alloca { i32, { i32 } }*               
        store { i32, { i32 } }* %0, { i32, { i32 } }** %state
        %retval = alloca i32            
        store i32 0, i32* %retval
        load { i32, { i32 } }*, { i32, { i32 } }** %state          
        store { i32, { i32 } } zeroinitializer, { i32, { i32 } }* %1
        br label %return

return:         
        load i32, i32* %retval               
        ret i32 %2
}
