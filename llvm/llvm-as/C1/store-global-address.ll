

@dst = global i32 0             
@ptr = global i32* null         

define void @test() {
        store i32* @dst, i32** @ptr
        ret void
}

