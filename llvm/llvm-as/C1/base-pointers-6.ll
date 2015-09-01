



declare void @site_for_call_safpeoint()

define i64 addrspace(1)* @test(i64 addrspace(1)* %base_obj_x, i64 addrspace(1)* %base_obj_y, i1 %runtime_condition_x, i1 %runtime_condition_y) gc "statepoint-example" {
entry:
  br i1 %runtime_condition_x, label %here, label %there

here:
 br i1 %runtime_condition_y, label %bump_here_a, label %bump_here_b

bump_here_a:
  %x_a = getelementptr i64, i64 addrspace(1)* %base_obj_x, i32 1
  br label %merge_here

bump_here_b:
  %x_b = getelementptr i64, i64 addrspace(1)* %base_obj_x, i32 2
  br label %merge_here
  

merge_here:
  %x = phi i64 addrspace(1)* [ %x_a , %bump_here_a ], [ %x_b , %bump_here_b ]
  br label %merge

there:
  %y = getelementptr i64, i64 addrspace(1)* %base_obj_y, i32 1
  br label %merge

merge:



  %merged_value = phi i64 addrspace(1)* [ %x, %merge_here ], [ %y, %there ]
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @site_for_call_safpeoint, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  ret i64 addrspace(1)* %merged_value
}

declare void @do_safepoint()
declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)
