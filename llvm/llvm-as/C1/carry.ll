

define i64 @f1(i64 %a, i64 %b) {
entry:



	%tmp = sub i64 %a, %b
	ret i64 %tmp
}

define i64 @f2(i64 %a, i64 %b) {
entry:





        %tmp1 = shl i64 %a, 1
	%tmp2 = sub i64 %tmp1, %b
	ret i64 %tmp2
}


define i64 @f3(i32 %vi) {
entry:



    %v0 = zext i32 %vi to i64
    %v1 = xor i64 %v0, -155057456198619
    %v4 = add i64 %v1, 155057456198619
    %v5 = add i64 %v4, %v1
    ret i64 %v5
}
