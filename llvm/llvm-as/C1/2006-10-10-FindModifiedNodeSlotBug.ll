


@tree_code_type = external global [0 x i32]		

define void @copy_if_shared_r() {
	%tmp = load i32, i32* null		
	%tmp56 = and i32 %tmp, 255		
	%gep.upgrd.1 = zext i32 %tmp56 to i64		
	%tmp8 = getelementptr [0 x i32], [0 x i32]* @tree_code_type, i32 0, i64 %gep.upgrd.1	
	%tmp9 = load i32, i32* %tmp8		
	%tmp10 = add i32 %tmp9, -1		
	%tmp.upgrd.2 = icmp ugt i32 %tmp10, 2		
	%tmp14 = load i32, i32* null		
	%tmp15 = lshr i32 %tmp14, 31		
	%tmp15.upgrd.3 = trunc i32 %tmp15 to i8		
	%tmp16 = icmp ne i8 %tmp15.upgrd.3, 0		
	br i1 %tmp.upgrd.2, label %cond_false25, label %cond_true
cond_true:		
	br i1 %tmp16, label %cond_true17, label %cond_false
cond_true17:		
	ret void
cond_false:		
	ret void
cond_false25:		
	ret void
}

