





define internal i32 @callee(i1 %C, i32* %A) {
entry:
        
        %A.0 = load i32, i32* %A
        br i1 %C, label %T, label %F
T:
        ret i32 %A.0
F:
        
        %A.2 = getelementptr i32, i32* %A, i32 2
        %R = load i32, i32* %A.2
        ret i32 %R
}

define i32 @foo() {
        %X = call i32 @callee(i1 false, i32* null)             
        ret i32 %X
}

