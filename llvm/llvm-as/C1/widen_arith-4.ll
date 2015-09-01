





define void @update(<5 x i16>* %dst, <5 x i16>* %src, i32 %n) nounwind {
entry:
	%dst.addr = alloca <5 x i16>*		
	%src.addr = alloca <5 x i16>*		
	%n.addr = alloca i32		
	%v = alloca <5 x i16>, align 16		
	%i = alloca i32, align 4		
	store <5 x i16>* %dst, <5 x i16>** %dst.addr
	store <5 x i16>* %src, <5 x i16>** %src.addr
	store i32 %n, i32* %n.addr
	store <5 x i16> < i16 1, i16 1, i16 1, i16 0, i16 0 >, <5 x i16>* %v
	store i32 0, i32* %i
	br label %forcond

forcond:		
	%tmp = load i32, i32* %i		
	%tmp1 = load i32, i32* %n.addr		
	%cmp = icmp slt i32 %tmp, %tmp1		
	br i1 %cmp, label %forbody, label %afterfor

forbody:		
	%tmp2 = load i32, i32* %i		
	%tmp3 = load <5 x i16>*, <5 x i16>** %dst.addr		
	%arrayidx = getelementptr <5 x i16>, <5 x i16>* %tmp3, i32 %tmp2		
	%tmp4 = load i32, i32* %i		
	%tmp5 = load <5 x i16>*, <5 x i16>** %src.addr		
	%arrayidx6 = getelementptr <5 x i16>, <5 x i16>* %tmp5, i32 %tmp4		
	%tmp7 = load <5 x i16>, <5 x i16>* %arrayidx6		
	%sub = sub <5 x i16> %tmp7, < i16 271, i16 271, i16 271, i16 271, i16 271 >		
	%mul = mul <5 x i16> %sub, < i16 2, i16 4, i16 2, i16 2, i16 2 >		
	store <5 x i16> %mul, <5 x i16>* %arrayidx
	br label %forinc

forinc:		
	%tmp8 = load i32, i32* %i		
	%inc = add i32 %tmp8, 1		
	store i32 %inc, i32* %i
	br label %forcond

afterfor:		
	ret void
}

