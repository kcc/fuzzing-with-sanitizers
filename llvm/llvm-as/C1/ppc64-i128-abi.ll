






@x = common global <1 x i128> zeroinitializer, align 16
@y = common global <1 x i128> zeroinitializer, align 16
@a = common global i128 zeroinitializer, align 16
@b = common global i128 zeroinitializer, align 16









define <1 x i128> @v1i128_increment_by_one(<1 x i128> %a) nounwind {
       %tmp = add <1 x i128> %a, <i128 1>
       ret <1 x i128> %tmp  

























}










define <1 x i128> @v1i128_increment_by_val(<1 x i128> %a, <1 x i128> %b) nounwind {
       %tmp = add <1 x i128> %a, %b
       ret <1 x i128> %tmp

















}













define i128 @i128_increment_by_one(i128 %a) nounwind {
       %tmp =  add i128 %a,  1
       ret i128 %tmp



















}

















define i128 @i128_increment_by_val(i128 %a, i128 %b) nounwind {
       %tmp =  add i128 %a, %b
       ret i128 %tmp



















}






define <1 x i128> @call_v1i128_increment_by_one() nounwind {
       %tmp = load <1 x i128>, <1 x i128>* @x, align 16
       %ret = call <1 x i128> @v1i128_increment_by_one(<1 x i128> %tmp)
       ret <1 x i128> %ret


















}

define <1 x i128> @call_v1i128_increment_by_val() nounwind {
       %tmp = load <1 x i128>, <1 x i128>* @x, align 16
       %tmp2 = load <1 x i128>, <1 x i128>* @y, align 16
       %ret = call <1 x i128> @v1i128_increment_by_val(<1 x i128> %tmp, <1 x i128> %tmp2)
       ret <1 x i128> %ret


























}

define i128 @call_i128_increment_by_one() nounwind {
       %tmp = load i128, i128* @a, align 16
       %ret = call i128 @i128_increment_by_one(i128 %tmp)
       ret i128 %ret


















}

define i128 @call_i128_increment_by_val() nounwind {
       %tmp = load i128, i128* @a, align 16
       %tmp2 = load i128, i128* @b, align 16
       %ret = call i128 @i128_increment_by_val(i128 %tmp, i128 %tmp2)
       ret i128 %ret























}


