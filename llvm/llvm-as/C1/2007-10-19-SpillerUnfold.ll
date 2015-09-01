





define signext   i16 @t(i32* %bitptr, i32* %source, i8** %byteptr, i32 %scale, i32 %round) {
entry:
	br label %bb

bb:		
	%cnt.0 = phi i32 [ 0, %entry ], [ %tmp422445, %cond_next391 ]		
	%v.1 = phi i32 [ undef, %entry ], [ %tmp411, %cond_next391 ]		
	br i1 false, label %cond_true, label %cond_next127

cond_true:		
	store i8* null, i8** %byteptr, align 4
	store i8* null, i8** %byteptr, align 4
	br label %cond_next127

cond_next127:		
	%tmp151 = add i32 0, %round		
	%tmp153 = ashr i32 %tmp151, %scale		
	%tmp154155 = trunc i32 %tmp153 to i16		
	%tmp154155156 = sext i16 %tmp154155 to i32		
	%tmp158 = xor i32 %tmp154155156, %tmp153		
	%tmp160 = or i32 %tmp158, %cnt.0		
	%tmp171 = load i32, i32* %bitptr, align 4		
	%tmp180181 = sext i16 0 to i32		
	%tmp183 = add i32 %tmp160, 1		
	br i1 false, label %cond_true188, label %cond_next245

cond_true188:		
	ret i16 0

cond_next245:		
	%tmp249 = ashr i32 %tmp180181, 8		
	%tmp250 = add i32 %tmp171, %tmp249		
	%tmp253444 = lshr i32 %tmp180181, 4		
	%tmp254 = and i32 %tmp253444, 15		
	%tmp256 = and i32 %tmp180181, 15		
	%tmp264 = icmp ugt i32 %tmp250, 15		
	br i1 %tmp264, label %cond_true267, label %cond_next391

cond_true267:		
	store i8* null, i8** %byteptr, align 4
	store i8* null, i8** %byteptr, align 4
	br i1 false, label %cond_true289, label %cond_next327

cond_true289:		
	ret i16 0

cond_next327:		
	br i1 false, label %cond_true343, label %cond_next385

cond_true343:		
	%tmp345 = load i8*, i8** %byteptr, align 4		
	store i8* null, i8** %byteptr, align 4
	br i1 false, label %cond_next385, label %cond_true352

cond_true352:		
	store i8* %tmp345, i8** %byteptr, align 4
	br i1 false, label %cond_true364, label %cond_next385

cond_true364:		
	ret i16 0

cond_next385:		
	br label %cond_next391

cond_next391:		
	%tmp393 = load i32, i32* %source, align 4		
	%tmp395 = load i32, i32* %bitptr, align 4		
	%tmp396 = shl i32 %tmp393, %tmp395		
	%tmp398 = sub i32 32, %tmp256		
	%tmp405 = lshr i32 %tmp396, 31		
	%tmp406 = add i32 %tmp405, -1		
	%tmp409 = lshr i32 %tmp406, %tmp398		
	%tmp411 = sub i32 0, %tmp409		
	%tmp422445 = add i32 %tmp254, %tmp183		
	%tmp426447 = add i32 %tmp395, %tmp256		
	store i32 %tmp426447, i32* %bitptr, align 4
	%tmp429448 = icmp ult i32 %tmp422445, 63		
	br i1 %tmp429448, label %bb, label %UnifiedReturnBlock

UnifiedReturnBlock:		
	ret i16 0
}
