


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32"
target triple = "i386-pc-linux-gnu"

define i8* @string_expandtabs(i32 %n, i8* %m) nounwind {
entry:
	br i1 undef, label %bb33, label %bb1

bb1:		
	br i1 undef, label %overflow1, label %bb15

bb15:		
	br i1 undef, label %bb33, label %bb17

bb17:		
	br label %bb30

bb19:		
	br i1 undef, label %bb20, label %bb29

bb20:		
	%0 = load i32, i32* undef, align 4		
	%1 = sub i32 %0, %n		
	br label %bb23

bb21:		
	%2 = icmp ult i8* %q.0, %m		
	br i1 %2, label %bb22, label %overflow2

bb22:		
	%3 = getelementptr i8, i8* %q.0, i32 1		
	br label %bb23

bb23:		
	%i.2 = phi i32 [ %1, %bb20 ], [ %4, %bb22 ]		
	%q.0 = phi i8* [ undef, %bb20 ], [ %3, %bb22 ]		
	%4 = add i32 %i.2, -1		
	%5 = icmp eq i32 %4, -1		
	br i1 %5, label %bb29, label %bb21

bb29:		
	%q.1 = phi i8* [ undef, %bb19 ], [ %q.0, %bb23 ]		
	br label %bb30

bb30:		
	br i1 undef, label %bb19, label %bb33

overflow2:		
	br i1 undef, label %bb32, label %overflow1

bb32:		
	br label %overflow1

overflow1:		
	ret i8* null

bb33:		
	ret i8* undef
}
