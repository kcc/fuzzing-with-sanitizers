





define void @a_linear_impl_fig_1() nounwind {
0:
        br label %"1"
1:
	br label %"2"
2:
	br label %"3"
3:
	br i1 1, label %"13", label %"4"
4:
	br i1 1, label %"5", label %"1"
5:
	br i1 1, label %"8", label %"6"
6:
	br i1 1, label %"7", label %"4"
7:
	ret void
8:
	br i1 1, label %"9", label %"1"
9:
	br label %"10"
10:
	br i1 1, label %"12", label %"11"
11:
	br i1 1, label %"9", label %"8"
13:
	br i1 1, label %"2", label %"1"
12:
 	switch i32 0, label %"1" [ i32 0, label %"9"
                                  i32 1, label %"8"]
}



















