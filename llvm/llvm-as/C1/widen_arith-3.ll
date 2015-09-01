




@.str = internal constant [4 x i8] c"%d \00"		
@.str1 = internal constant [2 x i8] c"\0A\00"		

define void @update(<3 x i16>* %dst, <3 x i16>* %src, i32 %n) nounwind {
entry:
	%dst.addr = alloca <3 x i16>*		
	%src.addr = alloca <3 x i16>*		
	%n.addr = alloca i32		
	%v = alloca <3 x i16>, align 8		
	%i = alloca i32, align 4		
	store <3 x i16>* %dst, <3 x i16>** %dst.addr
	store <3 x i16>* %src, <3 x i16>** %src.addr
	store i32 %n, i32* %n.addr
	store <3 x i16> < i16 1, i16 1, i16 1 >, <3 x i16>* %v
	store i32 0, i32* %i
	br label %forcond

forcond:		
	%tmp = load i32, i32* %i		
	%tmp1 = load i32, i32* %n.addr		
	%cmp = icmp slt i32 %tmp, %tmp1		
	br i1 %cmp, label %forbody, label %afterfor

forbody:		
	%tmp2 = load i32, i32* %i		
	%tmp3 = load <3 x i16>*, <3 x i16>** %dst.addr		
	%arrayidx = getelementptr <3 x i16>, <3 x i16>* %tmp3, i32 %tmp2		
	%tmp4 = load i32, i32* %i		
	%tmp5 = load <3 x i16>*, <3 x i16>** %src.addr		
	%arrayidx6 = getelementptr <3 x i16>, <3 x i16>* %tmp5, i32 %tmp4		
	%tmp7 = load <3 x i16>, <3 x i16>* %arrayidx6		
	%add = add <3 x i16> %tmp7, < i16 1, i16 1, i16 1 >		
	store <3 x i16> %add, <3 x i16>* %arrayidx
	br label %forinc

forinc:		
	%tmp8 = load i32, i32* %i		
	%inc = add i32 %tmp8, 1		
	store i32 %inc, i32* %i
	br label %forcond

afterfor:		
	ret void
}

