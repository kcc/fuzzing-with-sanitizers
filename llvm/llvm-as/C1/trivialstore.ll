

@G = internal global i32 17             

define void @foo() {
        store i32 17, i32* @G
        ret void
}

define i32 @bar() {
        %X = load i32, i32* @G               
        ret i32 %X
}

define internal void @dead() {
        store i32 123, i32* @G
        ret void
}

