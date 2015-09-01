

declare void @callee_stack0()
declare void @callee_stack8([8 x i32], i64)
declare void @callee_stack16([8 x i32], i64, i64)

define void @caller_to0_from0() nounwind {


  tail call void @callee_stack0()
  ret void

}

define void @caller_to0_from8([8 x i32], i64) nounwind{



  tail call void @callee_stack0()
  ret void

}

define void @caller_to8_from0() {




  tail call void @callee_stack8([8 x i32] undef, i64 42)
  ret void

}

define void @caller_to8_from8([8 x i32], i64 %a) {




  tail call void @callee_stack8([8 x i32] undef, i64 42)
  ret void


}

define void @caller_to16_from8([8 x i32], i64 %a) {





  tail call void @callee_stack16([8 x i32] undef, i64 undef, i64 undef)

  ret void
}

define void @caller_to8_from24([8 x i32], i64 %a, i64 %b, i64 %c) {




  tail call void @callee_stack8([8 x i32] undef, i64 42)
  ret void


}

define void @caller_to16_from16([8 x i32], i64 %a, i64 %b) {





  tail call void @callee_stack16([8 x i32] undef, i64 %b, i64 %a)
  ret void








}

@func = global void(i32)* null

define void @indirect_tail() {



  %fptr = load void(i32)*, void(i32)** @func
  tail call void %fptr(i32 42)
  ret void



}
