

define i32 @reload() {
reloadentry:
        br label %A

A:              
        call void @callee( )
        ret i32 0
}

define internal void @callee() {
entry:
        %X = alloca i8, i32 0           
        %Y = bitcast i32 0 to i32               
        %Z = alloca i8, i32 %Y          
        ret void
}

