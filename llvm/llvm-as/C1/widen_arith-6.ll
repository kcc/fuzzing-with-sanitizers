





define void @update(<3 x float>* %dst, <3 x float>* %src, i32 %n) nounwind {
entry:
	%dst.addr = alloca <3 x float>*		
	%src.addr = alloca <3 x float>*		
	%n.addr = alloca i32		
	%v = alloca <3 x float>, align 16		
	%i = alloca i32, align 4		
	store <3 x float>* %dst, <3 x float>** %dst.addr
	store <3 x float>* %src, <3 x float>** %src.addr
	store i32 %n, i32* %n.addr
	store <3 x float> < float 1.000000e+00, float 2.000000e+00, float 3.000000e+00 >, <3 x float>* %v
	store i32 0, i32* %i
	br label %forcond

forcond:		
	%tmp = load i32, i32* %i		
	%tmp1 = load i32, i32* %n.addr		
	%cmp = icmp slt i32 %tmp, %tmp1		
	br i1 %cmp, label %forbody, label %afterfor

forbody:		
	%tmp2 = load i32, i32* %i		
	%tmp3 = load <3 x float>*, <3 x float>** %dst.addr		
	%arrayidx = getelementptr <3 x float>, <3 x float>* %tmp3, i32 %tmp2		
	%tmp4 = load i32, i32* %i		
	%tmp5 = load <3 x float>*, <3 x float>** %src.addr		
	%arrayidx6 = getelementptr <3 x float>, <3 x float>* %tmp5, i32 %tmp4		
	%tmp7 = load <3 x float>, <3 x float>* %arrayidx6		
	%tmp8 = load <3 x float>, <3 x float>* %v		
	%mul = fmul <3 x float> %tmp7, %tmp8		
	%add = fadd <3 x float> %mul, < float 0x409EE02900000000, float 0x409EE02900000000, float 0x409EE02900000000 >		
	store <3 x float> %add, <3 x float>* %arrayidx
	br label %forinc

forinc:		
	%tmp9 = load i32, i32* %i		
	%inc = add i32 %tmp9, 1		
	store i32 %inc, i32* %i
	br label %forcond

afterfor:		
	ret void
}
