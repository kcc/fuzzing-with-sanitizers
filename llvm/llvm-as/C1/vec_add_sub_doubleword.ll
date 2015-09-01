




define <2 x i64> @test_add(<2 x i64> %x, <2 x i64> %y) nounwind {
       %result = add <2 x i64> %x, %y
       ret <2 x i64> %result

}

define <2 x i64> @increment_by_one(<2 x i64> %x) nounwind {
       %result = add <2 x i64> %x, <i64 1, i64 1>
       ret <2 x i64> %result

}

define <2 x i64> @increment_by_val(<2 x i64> %x, i64 %val) nounwind {
       %tmpvec = insertelement <2 x i64> <i64 0, i64 0>, i64 %val, i32 0
       %tmpvec2 = insertelement <2 x i64> %tmpvec, i64 %val, i32 1
       %result = add <2 x i64> %x, %tmpvec2
       ret <2 x i64> %result
















}

define <2 x i64> @test_sub(<2 x i64> %x, <2 x i64> %y) nounwind {
       %result = sub <2 x i64> %x, %y
       ret <2 x i64> %result

}

define <2 x i64> @decrement_by_one(<2 x i64> %x) nounwind {
       %result = sub <2 x i64> %x, <i64 -1, i64 -1>
       ret <2 x i64> %result

}

define <2 x i64> @decrement_by_val(<2 x i64> %x, i64 %val) nounwind {
       %tmpvec = insertelement <2 x i64> <i64 0, i64 0>, i64 %val, i32 0
       %tmpvec2 = insertelement <2 x i64> %tmpvec, i64 %val, i32 1
       %result = sub <2 x i64> %x, %tmpvec2
       ret <2 x i64> %result

}



