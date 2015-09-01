

declare void @f()
declare i32 @personality_function()

define void @test_id() gc "statepoint-example" personality i32 ()* @personality_function {

entry:


  invoke void @f()  "statepoint-id"="100" to label %normal_return unwind label %exceptional_return

normal_return:
  ret void

exceptional_return:
  %landing_pad4 = landingpad {i8*, i32} cleanup
  ret void
}

define void @test_num_patch_bytes() gc "statepoint-example" personality i32 ()* @personality_function {

entry:


  invoke void @f()  "statepoint-num-patch-bytes"="99" to label %normal_return unwind label %exceptional_return

normal_return:
  ret void

exceptional_return:
  %landing_pad4 = landingpad {i8*, i32} cleanup
  ret void
}

declare void @do_safepoint()
define void @gc.safepoint_poll() {
entry:
  call void @do_safepoint()
  ret void
}



