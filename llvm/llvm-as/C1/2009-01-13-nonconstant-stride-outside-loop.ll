




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.5"
	%struct.anon = type { %struct.obj*, %struct.obj* }
	%struct.obj = type { i16, i16, { %struct.anon } }
@heap_size = external global i32		
@"\01LC85" = external constant [39 x i8]		

declare i32 @sprintf(i8*, i8*, ...) nounwind

define %struct.obj* @gc_status(%struct.obj* %args) nounwind {
entry:
	br label %bb1.i

bb.i2:		
	%indvar.next24 = add i32 %m.0.i, 1		
	br label %bb1.i

bb1.i:		
	%m.0.i = phi i32 [ 0, %entry ], [ %indvar.next24, %bb.i2 ]		
	%0 = icmp slt i32 %m.0.i, 0		
	br i1 %0, label %bb2.i3, label %nactive_heaps.exit

bb2.i3:		
	%1 = load %struct.obj*, %struct.obj** null, align 4		
	%2 = icmp eq %struct.obj* %1, null		
	br i1 %2, label %nactive_heaps.exit, label %bb.i2

nactive_heaps.exit:		
	%3 = load i32, i32* @heap_size, align 4		
	%4 = mul i32 %3, %m.0.i		
	%5 = sub i32 %4, 0		
	%6 = tail call i32 (i8*, i8*, ...) @sprintf(i8* null, i8* getelementptr ([39 x i8], [39 x i8]* @"\01LC85", i32 0, i32 0), i32 %m.0.i, i32 0, i32 %5, i32 0) nounwind		
	ret %struct.obj* null
}
