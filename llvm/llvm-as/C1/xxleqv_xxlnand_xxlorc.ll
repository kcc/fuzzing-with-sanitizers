




define <4 x i32> @test_xxleqv(<4 x i32> %x, <4 x i32> %y) nounwind {
       %tmp = xor <4 x i32> %x, %y
       %ret_val = xor <4 x i32> %tmp, < i32 -1, i32 -1, i32 -1, i32 -1>
       ret <4 x i32> %ret_val

}


define <4 x i32> @test_xxlnand(<4 x i32> %x, <4 x i32> %y) nounwind {
       %tmp = and <4 x i32> %x, %y
       %ret_val = xor <4 x i32> %tmp, <i32 -1, i32 -1, i32 -1, i32 -1>
       ret <4 x i32> %ret_val

}


define <4 x i32> @test_xxlorc(<4 x i32> %x, <4 x i32> %y) nounwind {
       %tmp = xor <4 x i32> %y, <i32 -1, i32 -1, i32 -1, i32 -1>
       %ret_val = or <4 x i32> %x, %tmp
       ret <4 x i32> %ret_val

}


define <8 x i16> @test_xxleqvv8i16(<8 x i16> %x, <8 x i16> %y) nounwind {
       %tmp = xor <8 x i16> %x, %y
       %ret_val = xor <8 x i16> %tmp, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
       ret <8 x i16> %ret_val

}


define <8 x i16> @test_xxlnandv8i16(<8 x i16> %x, <8 x i16> %y) nounwind {
       %tmp = and <8 x i16> %x, %y
       %ret_val = xor <8 x i16> %tmp, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
       ret <8 x i16> %ret_val

}


define <8 x i16> @test_xxlorcv8i16(<8 x i16> %x, <8 x i16> %y) nounwind {
       %tmp = xor <8 x i16> %y, <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
       %ret_val = or <8 x i16> %x, %tmp
       ret <8 x i16> %ret_val

}

