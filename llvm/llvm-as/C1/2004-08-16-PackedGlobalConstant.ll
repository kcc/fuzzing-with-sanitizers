

@foo = global <2 x i32> < i32 0, i32 1 >                
@bar = external global <2 x i32>                

define void @main() {
        %t0 = load <2 x i32>, <2 x i32>* @foo              
        store <2 x i32> %t0, <2 x i32>* @bar
        ret void
}

