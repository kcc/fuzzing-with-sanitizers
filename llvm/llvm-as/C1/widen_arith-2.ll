





define void @update(i64* %dst_i, i64* %src_i, i32 %n) nounwind {
entry:
	%dst_i.addr = alloca i64*		
	%src_i.addr = alloca i64*		
	%n.addr = alloca i32		
	%i = alloca i32, align 4		
	%dst = alloca <8 x i8>*, align 4		
	%src = alloca <8 x i8>*, align 4		
	store i64* %dst_i, i64** %dst_i.addr
	store i64* %src_i, i64** %src_i.addr
	store i32 %n, i32* %n.addr
	store i32 0, i32* %i
	br label %forcond

forcond:		
	%tmp = load i32, i32* %i		
	%tmp1 = load i32, i32* %n.addr		
	%cmp = icmp slt i32 %tmp, %tmp1		
	br i1 %cmp, label %forbody, label %afterfor

forbody:		
	%tmp2 = load i32, i32* %i		
	%tmp3 = load i64*, i64** %dst_i.addr		
	%arrayidx = getelementptr i64, i64* %tmp3, i32 %tmp2		
	%conv = bitcast i64* %arrayidx to <8 x i8>*		
	store <8 x i8>* %conv, <8 x i8>** %dst
	%tmp4 = load i32, i32* %i		
	%tmp5 = load i64*, i64** %src_i.addr		
	%arrayidx6 = getelementptr i64, i64* %tmp5, i32 %tmp4		
	%conv7 = bitcast i64* %arrayidx6 to <8 x i8>*		
	store <8 x i8>* %conv7, <8 x i8>** %src
	%tmp8 = load i32, i32* %i		
	%tmp9 = load <8 x i8>*, <8 x i8>** %dst		
	%arrayidx10 = getelementptr <8 x i8>, <8 x i8>* %tmp9, i32 %tmp8		
	%tmp11 = load i32, i32* %i		
	%tmp12 = load <8 x i8>*, <8 x i8>** %src		
	%arrayidx13 = getelementptr <8 x i8>, <8 x i8>* %tmp12, i32 %tmp11		
	%tmp14 = load <8 x i8>, <8 x i8>* %arrayidx13		
	%add = add <8 x i8> %tmp14, < i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1 >		
	%and = and <8 x i8> %add, < i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4 >		
	store <8 x i8> %and, <8 x i8>* %arrayidx10
	br label %forinc

forinc:		
	%tmp15 = load i32, i32* %i		
	%inc = add i32 %tmp15, 1		
	store i32 %inc, i32* %i
	br label %forcond

afterfor:		
	ret void
}

