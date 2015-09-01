







define i64 @sub_ll(i64 %a, i64 %b) {
entry:
	%tmp.2 = sub i64 %a, %b		
	ret i64 %tmp.2
}

define i64 @sub_l_5(i64 %a) {
entry:
	%tmp.1 = sub i64 5, %a		
	ret i64 %tmp.1
}

define i64 @sub_l_m5(i64 %a) {
entry:
	%tmp.1 = sub i64 -5, %a		
	ret i64 %tmp.1
}
