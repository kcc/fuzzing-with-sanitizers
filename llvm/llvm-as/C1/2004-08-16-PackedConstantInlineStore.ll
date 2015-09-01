
@bar = external global <2 x i32>                

define void @main() {
        store <2 x i32> < i32 0, i32 1 >, <2 x i32>* @bar
        ret void
}

