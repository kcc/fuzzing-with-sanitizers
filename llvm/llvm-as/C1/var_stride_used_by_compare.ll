










target datalayout = "e-p:32:32-n32"
target triple = "i686-apple-darwin8"
@flags2 = external global [8193 x i8], align 32		

define void @foo(i32 %k, i32 %i.s) {
entry:
	%i = bitcast i32 %i.s to i32		
	%k_addr.012 = shl i32 %i.s, 1		
	%tmp14 = icmp sgt i32 %k_addr.012, 8192		
	br i1 %tmp14, label %return, label %bb.preheader
bb.preheader:		
	%tmp. = shl i32 %i, 1		
	br label %bb
bb:		
	%indvar = phi i32 [ %indvar.next, %bb ], [ 0, %bb.preheader ]		
	%tmp.15 = mul i32 %indvar, %i		
	%tmp.16 = add i32 %tmp.15, %tmp.		
	%k_addr.0.0 = bitcast i32 %tmp.16 to i32		
	%gep.upgrd.1 = zext i32 %tmp.16 to i64		
	%tmp = getelementptr [8193 x i8], [8193 x i8]* @flags2, i32 0, i64 %gep.upgrd.1		
	store i8 0, i8* %tmp
	%k_addr.0 = add i32 %k_addr.0.0, %i.s		
	%tmp.upgrd.2 = icmp sgt i32 %k_addr.0, 8192		
	%indvar.next = add i32 %indvar, 1		
	br i1 %tmp.upgrd.2, label %return.loopexit, label %bb
return.loopexit:		
	br label %return
return:		
	ret void
}
