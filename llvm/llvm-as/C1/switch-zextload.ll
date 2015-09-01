



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin9.6"
	%struct.move_s = type { i32, i32, i32, i32, i32, i32 }
	%struct.node_t = type { i8, i8, i8, i8, i32, i32, %struct.node_t**, %struct.node_t*, %struct.move_s }

define fastcc void @set_proof_and_disproof_numbers(%struct.node_t* nocapture %node) nounwind {
entry:
	%0 = load i8, i8* null, align 1		
	switch i8 %0, label %return [
		i8 2, label %bb31
		i8 0, label %bb80
		i8 1, label %bb82
		i8 3, label %bb84
	]

bb31:		
	unreachable

bb80:		
	ret void

bb82:		
	ret void

bb84:		
	ret void

return:		
	ret void
}
