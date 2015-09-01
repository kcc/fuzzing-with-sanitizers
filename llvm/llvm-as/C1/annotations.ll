



@texture = internal addrspace(1) global i64 0, align 8

@surface = internal addrspace(1) global i64 0, align 8




define void @kernel_func_maxntid(float* %a) {


  ret void
}


define void @kernel_func_reqntid(float* %a) {


  ret void
}


define void @kernel_func_minctasm(float* %a) {


  ret void
}



!nvvm.annotations = !{!1, !2, !3, !4, !5, !6, !7, !8}

!1 = !{void (float*)* @kernel_func_maxntid, !"kernel", i32 1}
!2 = !{void (float*)* @kernel_func_maxntid, !"maxntidx", i32 10, !"maxntidy", i32 20, !"maxntidz", i32 30}

!3 = !{void (float*)* @kernel_func_reqntid, !"kernel", i32 1}
!4 = !{void (float*)* @kernel_func_reqntid, !"reqntidx", i32 11, !"reqntidy", i32 22, !"reqntidz", i32 33}

!5 = !{void (float*)* @kernel_func_minctasm, !"kernel", i32 1}
!6 = !{void (float*)* @kernel_func_minctasm, !"minctasm", i32 42}

!7 = !{i64 addrspace(1)* @texture, !"texture", i32 1}
!8 = !{i64 addrspace(1)* @surface, !"surface", i32 1}
