

target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32"
target triple = "thumbv6t2-elf"
	%struct.dwarf_cie = type <{ i32, i32, i8, [0 x i8], [3 x i8] }>

declare i8* @read_sleb128(i8*, i32* nocapture) nounwind

define i32 @get_cie_encoding(%struct.dwarf_cie* %cie) nounwind {
entry:
	br i1 undef, label %bb1, label %bb13

bb1:		
	%tmp38 = add i32 undef, 10		
	br label %bb.i

bb.i:		
	%indvar.i = phi i32 [ 0, %bb1 ], [ %2, %bb.i ]		
	%tmp39 = add i32 %indvar.i, %tmp38		
	%p_addr.0.i = getelementptr i8, i8* undef, i32 %tmp39		
	%0 = load i8, i8* %p_addr.0.i, align 1		
	%1 = icmp slt i8 %0, 0		
	%2 = add i32 %indvar.i, 1		
	br i1 %1, label %bb.i, label %read_uleb128.exit

read_uleb128.exit:		
	%.sum40 = add i32 %indvar.i, undef		
	%.sum31 = add i32 %.sum40, 2		
	%scevgep.i = getelementptr %struct.dwarf_cie, %struct.dwarf_cie* %cie, i32 0, i32 3, i32 %.sum31		
	%3 = call  i8* @read_sleb128(i8* %scevgep.i, i32* undef)		
	unreachable

bb13:		
	ret i32 0
}
