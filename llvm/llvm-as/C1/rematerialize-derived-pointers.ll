

declare void @use_obj16(i16 addrspace(1)*)
declare void @use_obj32(i32 addrspace(1)*)
declare void @use_obj64(i64 addrspace(1)*)
declare void @do_safepoint()

define void @"test_gep_const"(i32 addrspace(1)* %base) gc "statepoint-example" {

entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %base, i32 15
  
  %sp = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  
  
  
  call void @use_obj32(i32 addrspace(1)* %base)
  call void @use_obj32(i32 addrspace(1)* %ptr)
  ret void
}

define void @"test_gep_idx"(i32 addrspace(1)* %base, i32 %idx) gc "statepoint-example" {

entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %base, i32 %idx
  
  %sp = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  
  
  
  call void @use_obj32(i32 addrspace(1)* %base)
  call void @use_obj32(i32 addrspace(1)* %ptr)
  ret void
}

define void @"test_bitcast"(i32 addrspace(1)* %base) gc "statepoint-example" {

entry:
  %ptr = bitcast i32 addrspace(1)* %base to i64 addrspace(1)*
  
  %sp = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  
  
  
  call void @use_obj32(i32 addrspace(1)* %base)
  call void @use_obj64(i64 addrspace(1)* %ptr)
  ret void
}

define void @"test_bitcast_gep"(i32 addrspace(1)* %base) gc "statepoint-example" {

entry:
  %ptr.gep = getelementptr i32, i32 addrspace(1)* %base, i32 15
  
  %ptr.cast = bitcast i32 addrspace(1)* %ptr.gep to i64 addrspace(1)*
  
  %sp = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  
  
  
  
  call void @use_obj32(i32 addrspace(1)* %base)
  call void @use_obj64(i64 addrspace(1)* %ptr.cast)
  ret void
}

define void @"test_intersecting_chains"(i32 addrspace(1)* %base, i32 %idx) gc "statepoint-example" {

entry:
  %ptr.gep = getelementptr i32, i32 addrspace(1)* %base, i32 15
  
  %ptr.cast = bitcast i32 addrspace(1)* %ptr.gep to i64 addrspace(1)*
  
  %ptr.cast2 = bitcast i32 addrspace(1)* %ptr.gep to i16 addrspace(1)*
  
  %sp = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  
  
  
  
  call void @use_obj64(i64 addrspace(1)* %ptr.cast)
  call void @use_obj16(i16 addrspace(1)* %ptr.cast2)
  ret void
}

define void @"test_cost_threshold"(i32 addrspace(1)* %base, i32 %idx1, i32 %idx2, i32 %idx3) gc "statepoint-example" {

entry:
  %ptr.gep = getelementptr i32, i32 addrspace(1)* %base, i32 15
  
  %ptr.gep2 = getelementptr i32, i32 addrspace(1)* %ptr.gep, i32 %idx1
  
  %ptr.gep3 = getelementptr i32, i32 addrspace(1)* %ptr.gep2, i32 %idx2
  
  %ptr.gep4 = getelementptr i32, i32 addrspace(1)* %ptr.gep3, i32 %idx3
  
  %ptr.cast = bitcast i32 addrspace(1)* %ptr.gep4 to i64 addrspace(1)*
  
  %sp = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  
  
  
  
  call void @use_obj64(i64 addrspace(1)* %ptr.cast)
  ret void
}

define void @"test_two_derived"(i32 addrspace(1)* %base) gc "statepoint-example" {

entry:
  %ptr = getelementptr i32, i32 addrspace(1)* %base, i32 15
  %ptr2 = getelementptr i32, i32 addrspace(1)* %base, i32 12
  
  
  %sp = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  
  
  
  
  call void @use_obj32(i32 addrspace(1)* %ptr)
  call void @use_obj32(i32 addrspace(1)* %ptr2)
  ret void
}

define void @"test_gep_smallint_array"([3 x i32] addrspace(1)* %base) gc "statepoint-example" {

entry:
  %ptr = getelementptr [3 x i32], [3 x i32] addrspace(1)* %base, i32 0, i32 2
  
  %sp = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  
  
  
  call void @use_obj32(i32 addrspace(1)* %ptr)
  ret void
}

declare i32 @fake_personality_function()

define void @"test_invoke"(i32 addrspace(1)* %base) gc "statepoint-example" personality i32 ()* @fake_personality_function {

entry:
  %ptr.gep = getelementptr i32, i32 addrspace(1)* %base, i32 15
  
  %ptr.cast = bitcast i32 addrspace(1)* %ptr.gep to i64 addrspace(1)*
  
  %ptr.cast2 = bitcast i32 addrspace(1)* %ptr.gep to i16 addrspace(1)*
  
  %sp = invoke i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
                to label %normal unwind label %exception

normal:
  
  
  
  
  
  
  
  call void @use_obj64(i64 addrspace(1)* %ptr.cast)
  call void @use_obj16(i16 addrspace(1)* %ptr.cast2)
  ret void

exception:
  
  %landing_pad4 = landingpad { i8*, i32 }
          cleanup
  
  
  
  
  
  
  call void @use_obj64(i64 addrspace(1)* %ptr.cast)
  call void @use_obj16(i16 addrspace(1)* %ptr.cast2)
  ret void
}

define void @"test_loop"(i32 addrspace(1)* %base) gc "statepoint-example" {

entry:
  %ptr.gep = getelementptr i32, i32 addrspace(1)* %base, i32 15
  
  br label %loop

loop:
  
  
  call void @use_obj32(i32 addrspace(1)* %ptr.gep)
  %sp = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  
  
  
  br label %loop
}

define void @"test_too_long"(i32 addrspace(1)* %base) gc "statepoint-example" {

entry:
  %ptr.gep   = getelementptr i32, i32 addrspace(1)* %base, i32 15
  %ptr.gep1  = getelementptr i32, i32 addrspace(1)* %ptr.gep, i32 15
  %ptr.gep2  = getelementptr i32, i32 addrspace(1)* %ptr.gep1, i32 15
  %ptr.gep3  = getelementptr i32, i32 addrspace(1)* %ptr.gep2, i32 15
  %ptr.gep4  = getelementptr i32, i32 addrspace(1)* %ptr.gep3, i32 15
  %ptr.gep5  = getelementptr i32, i32 addrspace(1)* %ptr.gep4, i32 15
  %ptr.gep6  = getelementptr i32, i32 addrspace(1)* %ptr.gep5, i32 15
  %ptr.gep7  = getelementptr i32, i32 addrspace(1)* %ptr.gep6, i32 15
  %ptr.gep8  = getelementptr i32, i32 addrspace(1)* %ptr.gep7, i32 15
  %ptr.gep9  = getelementptr i32, i32 addrspace(1)* %ptr.gep8, i32 15
  %ptr.gep10 = getelementptr i32, i32 addrspace(1)* %ptr.gep9, i32 15
  %ptr.gep11 = getelementptr i32, i32 addrspace(1)* %ptr.gep10, i32 15
  %sp = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  
  
  
  
  call void @use_obj32(i32 addrspace(1)* %ptr.gep11)
  ret void
}


declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)
