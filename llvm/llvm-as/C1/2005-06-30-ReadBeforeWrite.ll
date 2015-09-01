



define void @zero(i8* %p, i32 %n) {
entry:
	%p_addr = alloca i8*		
	%n_addr = alloca i32		
	%i = alloca i32		
	%out = alloca i32		
	%undef = alloca i32		
	store i8* %p, i8** %p_addr
	store i32 %n, i32* %n_addr
	store i32 0, i32* %i
	br label %loopentry
loopentry:		
	%tmp.0 = load i32, i32* %n_addr		
	%tmp.1 = add i32 %tmp.0, 1		
	%tmp.2 = load i32, i32* %i		
	%tmp.3 = icmp sgt i32 %tmp.1, %tmp.2		
	%tmp.4 = zext i1 %tmp.3 to i32		
	br i1 %tmp.3, label %no_exit, label %return
no_exit:		
	%tmp.5 = load i32, i32* %undef		
	store i32 %tmp.5, i32* %out
	store i32 0, i32* %undef
	%tmp.6 = load i32, i32* %i		
	%tmp.7 = icmp sgt i32 %tmp.6, 0		
	%tmp.8 = zext i1 %tmp.7 to i32		
	br i1 %tmp.7, label %then, label %endif
then:		
	%tmp.9 = load i8*, i8** %p_addr		
	%tmp.10 = load i32, i32* %i		
	%tmp.11 = sub i32 %tmp.10, 1		
	%tmp.12 = getelementptr i8, i8* %tmp.9, i32 %tmp.11		
	%tmp.13 = load i32, i32* %out		
	%tmp.14 = trunc i32 %tmp.13 to i8		
	store i8 %tmp.14, i8* %tmp.12
	br label %endif
endif:		
	%tmp.15 = load i32, i32* %i		
	%inc = add i32 %tmp.15, 1		
	store i32 %inc, i32* %i
	br label %loopentry
return:		
	ret void
}
