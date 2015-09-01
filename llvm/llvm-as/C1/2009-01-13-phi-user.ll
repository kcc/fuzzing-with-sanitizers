

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"
	%struct.node = type { %struct.node*, i32 }
@head = internal global %struct.node* null		
@node = internal global %struct.node { %struct.node* null, i32 42 }, align 16		

define i32 @f() nounwind {
entry:
	store %struct.node* @node, %struct.node** @head, align 8
	br label %bb1

bb:		
	%0 = getelementptr %struct.node, %struct.node* %t.0, i64 0, i32 1		
	%1 = load i32, i32* %0, align 4		
	%2 = getelementptr %struct.node, %struct.node* %t.0, i64 0, i32 0		
	br label %bb1

bb1:		
	%value.0 = phi i32 [ undef, %entry ], [ %1, %bb ]		
	%t.0.in = phi %struct.node** [ @head, %entry ], [ %2, %bb ]		
	%t.0 = load %struct.node*, %struct.node** %t.0.in		
	%3 = icmp eq %struct.node* %t.0, null		
	br i1 %3, label %bb2, label %bb

bb2:		
	ret i32 %value.0
}

define i32 @main() nounwind {
entry:
	%0 = call i32 @f() nounwind		
	ret i32 %0
}
