

@V = global float 1.200000e+01          
@G = internal global i32* null          

define i32 @user() {
        %P = load i32*, i32** @G              
        %Q = load i32, i32* %P               
        ret i32 %Q
}

define void @setter() {
        %Vi = bitcast float* @V to i32*         
        store i32* %Vi, i32** @G
        ret void
}

