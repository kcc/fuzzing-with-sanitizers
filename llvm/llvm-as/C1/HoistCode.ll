

define void @foo(i1 %C, i32* %P) {
        br i1 %C, label %T, label %F
T:              
        store i32 7, i32* %P
        ret void
F:              
        store i32 7, i32* %P
        ret void
}
