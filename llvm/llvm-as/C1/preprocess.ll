

declare void @consume(...)



define void @test6(i64 addrspace(1)* %obj) gc "statepoint-example" {

entry:
  br label %next

next:






  %obj2 = phi i64 addrspace(1)* [ %obj, %entry ]
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  call void (...) @consume(i64 addrspace(1)* %obj2)
  call void (...) @consume(i64 addrspace(1)* %obj)
  ret void
}

declare void @some_call(i64 addrspace(1)*)


define void @test7() gc "statepoint-example" {


  ret void

unreached:
  %obj = phi i64 addrspace(1)* [null, %unreached]
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  call void (...) @consume(i64 addrspace(1)* %obj)
  br label %unreached
}



define void @test8() gc "statepoint-example" personality i32 ()* undef {


  ret void

unreached:
  invoke i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
          to label %normal_return unwind label %exceptional_return

normal_return:                                    
  ret void

exceptional_return:                               
  %landing_pad4 = landingpad { i8*, i32 }
          cleanup
  ret void
}

declare void @foo()



declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)
