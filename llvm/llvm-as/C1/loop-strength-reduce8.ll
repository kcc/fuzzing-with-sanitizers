










	%struct.CUMULATIVE_ARGS = type { i32, i32, i32, i32, i32, i32, i32 }
	%struct.bitmap_element = type { %struct.bitmap_element*, %struct.bitmap_element*, i32, [2 x i64] }
	%struct.bitmap_head_def = type { %struct.bitmap_element*, %struct.bitmap_element*, i32 }
	%struct.branch_path = type { %struct.rtx_def*, i32 }
	%struct.c_lang_decl = type <{ i8, [3 x i8] }>
	%struct.constant_descriptor = type { %struct.constant_descriptor*, i8*, %struct.rtx_def*, { x86_fp80 } }
	%struct.eh_region = type { %struct.eh_region*, %struct.eh_region*, %struct.eh_region*, i32, %struct.bitmap_head_def*, i32, { { %struct.eh_region*, %struct.eh_region*, %struct.eh_region*, %struct.rtx_def* } }, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
	%struct.eh_status = type { %struct.eh_region*, %struct.eh_region**, %struct.eh_region*, %struct.eh_region*, %struct.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, %struct.varray_head_tag*, %struct.varray_head_tag*, %struct.varray_head_tag*, %struct.branch_path*, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
	%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %struct.tree_node**, %struct.rtx_def** }
	%struct.equiv_table = type { %struct.rtx_def*, %struct.rtx_def* }
	%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
	%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %struct.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.CUMULATIVE_ARGS, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %struct.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %struct.tree_node*, %struct.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %struct.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i8, i8, i8 }
	%struct.goto_fixup = type { %struct.goto_fixup*, %struct.rtx_def*, %struct.tree_node*, %struct.tree_node*, %struct.rtx_def*, i32, %struct.rtx_def*, %struct.tree_node* }
	%struct.initial_value_struct = type { i32, i32, %struct.equiv_table* }
	%struct.label_chain = type { %struct.label_chain*, %struct.tree_node* }
	%struct.lang_decl = type { %struct.c_lang_decl, %struct.tree_node* }
	%struct.language_function = type { %struct.stmt_tree_s, %struct.tree_node* }
	%struct.machine_function = type { [59 x [3 x %struct.rtx_def*]], i32, i32 }
	%struct.nesting = type { %struct.nesting*, %struct.nesting*, i32, %struct.rtx_def*, { { i32, %struct.rtx_def*, %struct.rtx_def*, %struct.nesting*, %struct.tree_node*, %struct.tree_node*, %struct.label_chain*, i32, i32, i32, i32, %struct.rtx_def*, %struct.tree_node** } } }
	%struct.pool_constant = type { %struct.constant_descriptor*, %struct.pool_constant*, %struct.pool_constant*, %struct.rtx_def*, i32, i32, i32, i64, i32 }
	%struct.rtunion = type { i64 }
	%struct.rtx_def = type { i16, i8, i8, [1 x %struct.rtunion] }
	%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %struct.tree_node*, %struct.sequence_stack* }
	%struct.stmt_status = type { %struct.nesting*, %struct.nesting*, %struct.nesting*, %struct.nesting*, %struct.nesting*, %struct.nesting*, i32, i32, %struct.tree_node*, %struct.rtx_def*, i32, i8*, i32, %struct.goto_fixup* }
	%struct.stmt_tree_s = type { %struct.tree_node*, %struct.tree_node*, i8*, i32 }
	%struct.temp_slot = type { %struct.temp_slot*, %struct.rtx_def*, %struct.rtx_def*, i32, i64, %struct.tree_node*, %struct.tree_node*, i8, i8, i32, i32, i64, i64 }
	%struct.tree_common = type { %struct.tree_node*, %struct.tree_node*, i8, i8, i8, i8 }
	%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %struct.tree_node*, i8, i8, i8, i8, i8, i8, %struct.rtunion, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, %struct.rtx_def*, %struct.rtx_def*, { %struct.function* }, %struct.tree_node*, %struct.tree_node*, %struct.tree_node*, i64, %struct.lang_decl* }
	%struct.tree_exp = type { %struct.tree_common, i32, [1 x %struct.tree_node*] }
	%struct.tree_node = type { %struct.tree_decl }
	%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
	%struct.varasm_status = type { %struct.constant_descriptor**, %struct.pool_constant**, %struct.pool_constant*, %struct.pool_constant*, i64, %struct.rtx_def* }
	%struct.varray_data = type { [1 x i64] }
	%struct.varray_head_tag = type { i32, i32, i32, i8*, %struct.varray_data }
@lineno = internal global i32 0		
@tree_code_length = internal global [256 x i32] zeroinitializer
@llvm.used = appending global [1 x i8*] [ i8* bitcast (%struct.tree_node* (i32, ...)* @build_stmt to i8*) ], section "llvm.metadata"		

define %struct.tree_node* @build_stmt(i32 %code, ...) nounwind {
entry:
	%p = alloca i8*		
	%p1 = bitcast i8** %p to i8*		
	call void @llvm.va_start(i8* %p1)
	%0 = call fastcc %struct.tree_node* @make_node(i32 %code) nounwind		
	%1 = getelementptr [256 x i32], [256 x i32]* @tree_code_length, i32 0, i32 %code		
	%2 = load i32, i32* %1, align 4		
	%3 = load i32, i32* @lineno, align 4		
	%4 = bitcast %struct.tree_node* %0 to %struct.tree_exp*		
	%5 = getelementptr %struct.tree_exp, %struct.tree_exp* %4, i32 0, i32 1		
	store i32 %3, i32* %5, align 4
	%6 = icmp sgt i32 %2, 0		
	br i1 %6, label %bb, label %bb3

bb:		
	%i.01 = phi i32 [ %indvar.next, %bb ], [ 0, %entry ]		
	%7 = load i8*, i8** %p, align 4		
	%8 = getelementptr i8, i8* %7, i32 4		
	store i8* %8, i8** %p, align 4
	%9 = bitcast i8* %7 to %struct.tree_node**		
	%10 = load %struct.tree_node*, %struct.tree_node** %9, align 4		
	%11 = getelementptr %struct.tree_exp, %struct.tree_exp* %4, i32 0, i32 2, i32 %i.01		
	store %struct.tree_node* %10, %struct.tree_node** %11, align 4
	%indvar.next = add i32 %i.01, 1		
	%exitcond = icmp eq i32 %indvar.next, %2		
	br i1 %exitcond, label %bb3, label %bb

bb3:		
	call void @llvm.va_end(i8* %p1)
	ret %struct.tree_node* %0
}

declare void @llvm.va_start(i8*) nounwind

declare void @llvm.va_end(i8*) nounwind

declare fastcc %struct.tree_node* @make_node(i32) nounwind
