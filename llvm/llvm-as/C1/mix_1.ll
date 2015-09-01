






define void @a_linear_impl_fig_1() nounwind {
0:

	br i1 1, label %"1", label %"15"
1:
 	switch i32 0, label %"2" [ i32 0, label %"3"
                                  i32 1, label %"7"]
2:
	br label %"4"
3:
	br label %"5"
4:
	br label %"6"
5:
	br label %"6"
6:
	br label %"7"
7:
	br label %"15"
15:
	br label %"8"
8:
	br label %"16"
16:
        br label %"9"
9:
	br i1 1, label %"10", label %"11"
11:
	br i1 1, label %"13", label %"12"
13:
	br label %"14"
12:
	br label %"14"
14:
	br label %"8"
10:
        br label %"17"
17:
        br label %"18"
18:
        ret void
}





















