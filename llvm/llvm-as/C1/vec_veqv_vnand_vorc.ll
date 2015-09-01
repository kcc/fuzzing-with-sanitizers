



define <4 x i32> @test_veqv(<4 x i32> %x, <4 x i32> %y) nounwind {
       %tmp = xor <4 x i32> %x, %y
       %ret_val = xor <4 x i32> %tmp, < i32 -1, i32 -1, i32 -1, i32 -1>
       ret <4 x i32> %ret_val

}


define <4 x i32> @test_vnand(<4 x i32> %x, <4 x i32> %y) nounwind {
       %tmp = and <4 x i32> %x, %y
       %ret_val = xor <4 x i32> %tmp, <i32 -1, i32 -1, i32 -1, i32 -1>
       ret <4 x i32> %ret_val

}


define <4 x i32> @test_vorc(<4 x i32> %x, <4 x i32> %y) nounwind {
       %tmp1 = xor <4 x i32> %y, <i32 -1, i32 -1, i32 -1, i32 -1>
       %tmp2 = or <4 x i32> %x, %tmp1

       %tmp3 = xor <4 x i32> %tmp2, <i32 -1, i32 -1, i32 -1, i32 -1>
       %tmp4 = or <4 x i32> %tmp3, %x

       ret <4 x i32> %tmp4
}
