

declare i64 addrspace(1)* @"some_call"(i64 addrspace(1)*)
declare i32 @"personality_function"()

define i64 addrspace(1)* @test_basic(i64 addrspace(1)* %obj, i64 addrspace(1)* %obj1) gc "statepoint-example" personality i32 ()* @"personality_function" {

entry:
  
  
  
  %ret_val = invoke i64 addrspace(1)* @"some_call"(i64 addrspace(1)* %obj)
               to label %normal_return unwind label %exceptional_return





normal_return:
  ret i64 addrspace(1)* %ret_val





exceptional_return:
  %landing_pad4 = landingpad {i8*, i32}
          cleanup
  ret i64 addrspace(1)* %obj1
}

define i64 addrspace(1)* @test_two_invokes(i64 addrspace(1)* %obj, i64 addrspace(1)* %obj1) gc "statepoint-example" personality i32 ()* @"personality_function" {

entry:
  
  
  
  %ret_val1 = invoke i64 addrspace(1)* @"some_call"(i64 addrspace(1)* %obj)
               to label %second_invoke unwind label %exceptional_return


second_invoke:
  
  
  
  %ret_val2 = invoke i64 addrspace(1)* @"some_call"(i64 addrspace(1)* %ret_val1)
                to label %normal_return unwind label %exceptional_return


normal_return:
  
  
  ret i64 addrspace(1)* %ret_val2




exceptional_return:
  %landing_pad4 = landingpad {i8*, i32}
          cleanup
  ret i64 addrspace(1)* %obj1
}

define i64 addrspace(1)* @test_phi_node(i1 %cond, i64 addrspace(1)* %obj) gc "statepoint-example" personality i32 ()* @"personality_function" {


entry:
  br i1 %cond, label %left, label %right

left:
  %ret_val_left = invoke i64 addrspace(1)* @"some_call"(i64 addrspace(1)* %obj)
                    to label %merge unwind label %exceptional_return

right:
  %ret_val_right = invoke i64 addrspace(1)* @"some_call"(i64 addrspace(1)* %obj)
                     to label %merge unwind label %exceptional_return












merge:
  %ret_val = phi i64 addrspace(1)* [%ret_val_left, %left], [%ret_val_right, %right]
  ret i64 addrspace(1)* %ret_val




exceptional_return:
  %landing_pad4 = landingpad {i8*, i32}
          cleanup
  ret i64 addrspace(1)* %obj
}

declare void @do_safepoint()
define void @gc.safepoint_poll() {




entry:
  call void @do_safepoint()
  ret void
}
