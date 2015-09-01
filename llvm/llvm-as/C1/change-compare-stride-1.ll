








define void @borf(i8* nocapture %in, i8* nocapture %out) nounwind {








bb4.thread:
	br label %bb2.outer

bb2.outer:		
	%indvar19 = phi i64 [ 0, %bb4.thread ], [ %indvar.next29, %bb4 ]		
	%indvar31 = trunc i64 %indvar19 to i16		
	%i.0.reg2mem.0.ph = sub i16 639, %indvar31		
	%0 = zext i16 %i.0.reg2mem.0.ph to i32		
	%1 = mul i32 %0, 480		
	%tmp21 = mul i64 %indvar19, -478		
	br label %bb2

bb2:		
	%indvar = phi i64 [ 0, %bb2.outer ], [ %indvar.next, %bb2 ]		
	%indvar16 = trunc i64 %indvar to i16		
	%ctg2 = getelementptr i8, i8* %out, i64 %tmp21		
	%tmp22 = ptrtoint i8* %ctg2 to i64		
	%tmp24 = sub i64 %tmp22, %indvar		
	%out_addr.0.reg2mem.0 = inttoptr i64 %tmp24 to i8*		
	%j.0.reg2mem.0 = sub i16 479, %indvar16		
	%2 = zext i16 %j.0.reg2mem.0 to i32		
	%3 = add i32 %1, %2		
	%4 = add i32 %3, -481		
	%5 = zext i32 %4 to i64		
	%6 = getelementptr i8, i8* %in, i64 %5		
	%7 = load i8, i8* %6, align 1		
	%8 = add i32 %3, -480		
	%9 = zext i32 %8 to i64		
	%10 = getelementptr i8, i8* %in, i64 %9		
	%11 = load i8, i8* %10, align 1		
	%12 = add i32 %3, -479		
	%13 = zext i32 %12 to i64		
	%14 = getelementptr i8, i8* %in, i64 %13		
	%15 = load i8, i8* %14, align 1		
	%16 = add i32 %3, -1		
	%17 = zext i32 %16 to i64		
	%18 = getelementptr i8, i8* %in, i64 %17		
	%19 = load i8, i8* %18, align 1		
	%20 = zext i32 %3 to i64		
	%21 = getelementptr i8, i8* %in, i64 %20		
	%22 = load i8, i8* %21, align 1		
	%23 = add i32 %3, 1		
	%24 = zext i32 %23 to i64		
	%25 = getelementptr i8, i8* %in, i64 %24		
	%26 = load i8, i8* %25, align 1		
	%27 = add i32 %3, 481		
	%28 = zext i32 %27 to i64		
	%29 = getelementptr i8, i8* %in, i64 %28		
	%30 = load i8, i8* %29, align 1		
	%31 = add i32 %3, 480		
	%32 = zext i32 %31 to i64		
	%33 = getelementptr i8, i8* %in, i64 %32		
	%34 = load i8, i8* %33, align 1		
	%35 = add i32 %3, 479		
	%36 = zext i32 %35 to i64		
	%37 = getelementptr i8, i8* %in, i64 %36		
	%38 = load i8, i8* %37, align 1		
	%39 = add i8 %11, %7		
	%40 = add i8 %39, %15		
	%41 = add i8 %40, %19		
	%42 = add i8 %41, %22		
	%43 = add i8 %42, %26		
	%44 = add i8 %43, %30		
	%45 = add i8 %44, %34		
	%46 = add i8 %45, %38		
	store i8 %46, i8* %out_addr.0.reg2mem.0, align 1
	%indvar.next = add i64 %indvar, 1		
	%exitcond = icmp eq i64 %indvar.next, 478		
	br i1 %exitcond, label %bb4, label %bb2

bb4:		
	%indvar.next29 = add i64 %indvar19, 1		
	%exitcond30 = icmp eq i64 %indvar.next29, 638		
	br i1 %exitcond30, label %return, label %bb2.outer

return:		
	ret void
}
