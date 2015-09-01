




define <4 x i32> @test() {
        %tmp40 = bitcast <2 x i64> bitcast (<4 x i32> < i32 0, i32 0, i32 -1, i32 0 > to <2 x i64>) to <4 x i32>
        ret <4 x i32> %tmp40
}

