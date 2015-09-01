

@G1 = internal global i32 123            





define void @foo1() {


        store i32 1, i32* @G1
        ret void
}

@G2 = linkonce_odr constant i32 42

define void @foo2() {


        store i32 1, i32* @G2
        ret void
}

@G3 = linkonce_odr constant i32 42
