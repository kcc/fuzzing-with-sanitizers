




define i64 addrspace(1)* @test(i64 addrspace(1)* %obj) gc "statepoint-example" {





entry:
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  ret i64 addrspace(1)* %obj
}


define <2 x i64 addrspace(1)*> @test2(<2 x i64 addrspace(1)*> %obj) gc "statepoint-example" {











entry:
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  ret <2 x i64 addrspace(1)*> %obj
}


define <2 x i64 addrspace(1)*> @test3(<2 x i64 addrspace(1)*>* %ptr) gc "statepoint-example" {












entry:
  %obj = load <2 x i64 addrspace(1)*>, <2 x i64 addrspace(1)*>* %ptr
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  ret <2 x i64 addrspace(1)*> %obj
}

declare i32 @fake_personality_function()


define <2 x i64 addrspace(1)*> @test4(<2 x i64 addrspace(1)*>* %ptr) gc "statepoint-example" personality i32 ()* @fake_personality_function {





entry:
  %obj = load <2 x i64 addrspace(1)*>, <2 x i64 addrspace(1)*>* %ptr
  invoke i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
          to label %normal_return unwind label %exceptional_return









normal_return:                                    
  ret <2 x i64 addrspace(1)*> %obj









exceptional_return:                               
  %landing_pad4 = landingpad { i8*, i32 }
          cleanup
  ret <2 x i64 addrspace(1)*> %obj
}




define <2 x i64 addrspace(1)*> @test5(i64 addrspace(1)* %p) 
     gc "statepoint-example" {












entry:
  %vec = insertelement <2 x i64 addrspace(1)*> undef, i64 addrspace(1)* %p, i32 0
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  ret <2 x i64 addrspace(1)*> %vec
}



define <2 x i64 addrspace(1)*> @test6(i1 %cnd, <2 x i64 addrspace(1)*>* %ptr) 
    gc "statepoint-example" {













entry:
  br i1 %cnd, label %taken, label %untaken
taken:
  %obja = load <2 x i64 addrspace(1)*>, <2 x i64 addrspace(1)*>* %ptr
  br label %merge
untaken:
  %objb = load <2 x i64 addrspace(1)*>, <2 x i64 addrspace(1)*>* %ptr
  br label %merge

merge:
  %obj = phi <2 x i64 addrspace(1)*> [%obja, %taken], [%objb, %untaken]
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  ret <2 x i64 addrspace(1)*> %obj
}


declare void @do_safepoint()

declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)
