

@g = global i32 0               

define i32 @main() {
        %h = load i32, i32* @g               
        ret i32 %h
}
