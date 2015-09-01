

        %struct._Unwind_Context = type {  }

define i32 @execute_stack_op(i8* %op_ptr, i8* %op_end, %struct._Unwind_Context* %context, i64 %initial) {
entry:
        br i1 false, label %bb, label %return

bb:             
        br i1 false, label %bb6, label %bb31

bb6:            
        %tmp10 = load i64, i64* null, align 8                
        %tmp16 = load i64, i64* null, align 8                
        br i1 false, label %bb23, label %bb31

bb23:           
        %tmp2526.cast = and i64 %tmp16, 4294967295              
        %tmp27 = ashr i64 %tmp10, %tmp2526.cast         
        br label %bb31

bb31:           
        %result.0 = phi i64 [ %tmp27, %bb23 ], [ 0, %bb ], [ 0, %bb6 ]          
        br i1 false, label %bb, label %return

return:         
        ret i32 undef
}
