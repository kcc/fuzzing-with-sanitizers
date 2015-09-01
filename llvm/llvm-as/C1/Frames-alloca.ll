

























define i32* @f1(i32 %n) nounwind {
	%tmp = alloca i32, i32 %n		
	ret i32* %tmp
}
