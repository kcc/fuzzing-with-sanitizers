
target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "powerpc-apple-darwin8.8.0"
	%struct..0anon = type { i32 }
	%struct.A = type { %struct.anon }
	%struct.anon = type <{  }>

define void @bork(%struct.A* %In0P) {
entry:
	%tmp56 = bitcast %struct.A* %In0P to float*		
	br label %bb

bb:		
	%i.035.0 = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		
	%tmp8 = getelementptr float, float* %tmp56, i32 %i.035.0		
	%tmp101112 = bitcast float* %tmp8 to i8*		
	%tmp1617 = bitcast float* %tmp8 to i32*		
	%tmp21 = tail call i32 asm "lwbrx $0, $2, $1", "=r,r,bO,*m"( i8* %tmp101112, i32 0, i32* %tmp1617 )		
	%indvar.next = add i32 %i.035.0, 1		
	%exitcond = icmp eq i32 %indvar.next, 4		
	br i1 %exitcond, label %return, label %bb

return:		
	ret void
}
