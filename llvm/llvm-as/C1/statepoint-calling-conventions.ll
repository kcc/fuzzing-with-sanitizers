




define i64 addrspace(1)* @test_invoke_format(i64 addrspace(1)* %obj, i64 addrspace(1)* %obj1) gc "statepoint-example" personality i32 ()* @personality {



entry:
  %ret_val = invoke coldcc i64 addrspace(1)* @callee(i64 addrspace(1)* %obj)
               to label %normal_return unwind label %exceptional_return

normal_return:
  ret i64 addrspace(1)* %ret_val

exceptional_return:
  %landing_pad4 = landingpad {i8*, i32}
          cleanup
  ret i64 addrspace(1)* %obj1
}

define i64 addrspace(1)* @test_call_format(i64 addrspace(1)* %obj, i64 addrspace(1)* %obj1) gc "statepoint-example" {



entry:
  %ret_val = call coldcc i64 addrspace(1)* @callee(i64 addrspace(1)* %obj)
  ret i64 addrspace(1)* %ret_val
}


declare void @do_safepoint()
define void @gc.safepoint_poll() {

entry:
  call void @do_safepoint()
  ret void
}

declare coldcc i64 addrspace(1)* @callee(i64 addrspace(1)*)
declare i32 @personality()
