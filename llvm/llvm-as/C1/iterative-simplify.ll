


define i32 @main() {
entry:
	%retval = alloca i32, align 4		
	%i = alloca i32, align 4		
	%z = alloca i32, align 4		
	%z16 = alloca i32, align 4		
	%"alloca point" = bitcast i32 0 to i32		
	store i32 0, i32* %i
	%toBool = icmp ne i8 1, 0		
	br i1 %toBool, label %cond_true, label %cond_false

cond_true:		
	store i32 0, i32* %z
	br label %bb

bb:		
	%tmp = load i32, i32* %z		
	%tmp1 = sub i32 %tmp, 16384		
	store i32 %tmp1, i32* %z
	%tmp2 = load i32, i32* %i		
	%tmp3 = add i32 %tmp2, 1		
	store i32 %tmp3, i32* %i
	%tmp4 = load i32, i32* %i		
	%tmp5 = icmp sgt i32 %tmp4, 262144		
	%tmp56 = zext i1 %tmp5 to i8		
	%toBool7 = icmp ne i8 %tmp56, 0		
	br i1 %toBool7, label %cond_true8, label %cond_next

cond_true8:		
	call void @abort( )
	unreachable

cond_next:		
	%tmp9 = load i32, i32* %z		
	%tmp10 = icmp ne i32 %tmp9, 0		
	%tmp1011 = zext i1 %tmp10 to i8		
	%toBool12 = icmp ne i8 %tmp1011, 0		
	br i1 %toBool12, label %bb, label %bb13

bb13:		
	call void @exit( i32 0 )
	unreachable

cond_false:		
	%toBool14 = icmp ne i8 1, 0		
	br i1 %toBool14, label %cond_true15, label %cond_false33

cond_true15:		
	store i32 0, i32* %z16
	br label %bb17

bb17:		
	%tmp18 = load i32, i32* %z16		
	%tmp19 = sub i32 %tmp18, 16384		
	store i32 %tmp19, i32* %z16
	%tmp20 = load i32, i32* %i		
	%tmp21 = add i32 %tmp20, 1		
	store i32 %tmp21, i32* %i
	%tmp22 = load i32, i32* %i		
	%tmp23 = icmp sgt i32 %tmp22, 262144		
	%tmp2324 = zext i1 %tmp23 to i8		
	%toBool25 = icmp ne i8 %tmp2324, 0		
	br i1 %toBool25, label %cond_true26, label %cond_next27

cond_true26:		
	call void @abort( )
	unreachable

cond_next27:		
	%tmp28 = load i32, i32* %z16		
	%tmp29 = icmp ne i32 %tmp28, 0		
	%tmp2930 = zext i1 %tmp29 to i8		
	%toBool31 = icmp ne i8 %tmp2930, 0		
	br i1 %toBool31, label %bb17, label %bb32

bb32:		
	call void @exit( i32 0 )
	unreachable

cond_false33:		
	call void @exit( i32 0 )
	unreachable

cond_next34:		
	br label %cond_next35

cond_next35:		
	br label %return

return:		
	%retval36 = load i32, i32* %retval		
	ret i32 %retval36
}

declare void @abort()

declare void @exit(i32)
