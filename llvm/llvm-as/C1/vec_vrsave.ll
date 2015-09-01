




define <4 x i32> @test_rol() {
        ret <4 x i32> < i32 -11534337, i32 -11534337, i32 -11534337, i32 -11534337 >
}

define <4 x i32> @test_arg(<4 x i32> %A, <4 x i32> %B) {
        %C = add <4 x i32> %A, %B               
        ret <4 x i32> %C
}

