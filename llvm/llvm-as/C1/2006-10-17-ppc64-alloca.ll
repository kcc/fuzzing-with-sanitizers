

define i32* @foo(i32 %n) {
        %A = alloca i32, i32 %n         
        ret i32* %A
}

