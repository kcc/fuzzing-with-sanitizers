


declare void @foo()
declare void @use(...)

define i64 addrspace(1)* @test1(i64 addrspace(1)* %obj, i64 addrspace(1)* %obj2, i1 %condition) gc "statepoint-example" {
entry:



  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  br label %joint

joint:


  %phi1 = phi i64 addrspace(1)* [ %obj, %entry ], [ %obj3, %joint2 ]
  br i1 %condition, label %use, label %joint2

use:
  br label %joint2

joint2:



  %phi2 = phi i64 addrspace(1)* [ %obj, %use ], [ %obj2, %joint ]
  %obj3 = getelementptr i64, i64 addrspace(1)* %obj2, i32 1
  br label %joint
}

declare i64 addrspace(1)* @generate_obj()

declare void @consume_obj(i64 addrspace(1)*)

declare i1 @rt()

define void @test2() gc "statepoint-example" {

entry:
  %obj_init = call i64 addrspace(1)* @generate_obj()
  %obj = getelementptr i64, i64 addrspace(1)* %obj_init, i32 42
  br label %loop

loop:





  %index = phi i32 [ 0, %entry ], [ %index.inc, %loop.backedge ]

  %location = getelementptr i64, i64 addrspace(1)* %obj, i32 %index
  call void @consume_obj(i64 addrspace(1)* %location)
  %index.inc = add i32 %index, 1
  %condition = call i1 @rt()
  br i1 %condition, label %loop_x, label %loop_y

loop_x:
  br label %loop.backedge

loop.backedge:
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  br label %loop

loop_y:
  br label %loop.backedge
}

declare void @some_call(i8 addrspace(1)*)

define void @relocate_merge(i1 %cnd, i8 addrspace(1)* %arg) gc "statepoint-example" {

bci_0:
  br i1 %cnd, label %if_branch, label %else_branch

if_branch:



  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  br label %join

else_branch:



  %safepoint_token1 = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  br label %join

join:






  call void (i8 addrspace(1)*) @some_call(i8 addrspace(1)* %arg)
  ret void
}




define void @test3(i64 addrspace(1)* %obj) gc "statepoint-example" {
entry:





  %safepoint_token = call i32 (i64, i32, void (i64)*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidi64f(i64 0, i32 0, void (i64)* undef, i32 1, i32 0, i64 undef, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  %safepoint_token1 = call i32 (i64, i32, i32 (i64 addrspace(1)*)*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i32p1i64f(i64 0, i32 0, i32 (i64 addrspace(1)*)* undef, i32 1, i32 0, i64 addrspace(1)* %obj, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  ret void
}



define void @test4() gc "statepoint-example" {






  %safepoint_token2 = tail call i32 (i64, i32, i8 addrspace(1)* ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_p1i8f(i64 0, i32 0, i8 addrspace(1)* ()* undef, i32 0, i32 0, i32 0, i32 0)
  %res = call i8 addrspace(1)* @llvm.experimental.gc.result.ptr.p1i8(i32 %safepoint_token2)
  call i32 (i64, i32, i8 addrspace(1)* ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_p1i8f(i64 0, i32 0, i8 addrspace(1)* ()* undef, i32 0, i32 0, i32 0, i32 0)
  call void (...) @use(i8 addrspace(1)* %res)
  unreachable
}



define void @test5(i8 addrspace(1)* %arg) gc "statepoint-example" {

entry:
  call i32 (i64, i32, i8 addrspace(1)* ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_p1i8f(i64 0, i32 0, i8 addrspace(1)* ()* undef, i32 0, i32 0, i32 0, i32 0)
  switch i32 undef, label %kill [
    i32 10, label %merge
    i32 13, label %merge
  ]

kill:
  br label %merge

merge:





  %test = phi i8 addrspace(1)* [ null, %kill ], [ %arg, %entry ], [ %arg, %entry ]
  call void (...) @use(i8 addrspace(1)* %test)
  unreachable
}



define void @test6(i8 addrspace(1)* %arg1, i8 addrspace(1)* %arg2, 
                  i8 addrspace(1)* %arg3) gc "statepoint-example" {

entry:
  br i1 undef, label %gc.safepoint_poll.exit2, label %do_safepoint

do_safepoint:





  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 3, i8 addrspace(1)* %arg1, i8 addrspace(1)* %arg2, i8 addrspace(1)* %arg3)
  br label %gc.safepoint_poll.exit2

gc.safepoint_poll.exit2:










  call void (...) @use(i8 addrspace(1)* %arg1, i8 addrspace(1)* %arg2, i8 addrspace(1)* %arg3)
  ret void
}



define void @test_outer_loop(i8 addrspace(1)* %arg1, i8 addrspace(1)* %arg2, 
                  i1 %cmp) gc "statepoint-example" {

bci_0:
  br label %outer-loop

outer-loop:



  br label %inner-loop

inner-loop:
  br i1 %cmp, label %inner-loop, label %outer-inc

outer-inc:



  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 2, i8 addrspace(1)* %arg1, i8 addrspace(1)* %arg2)
  br label %outer-loop
}



define void @test_inner_loop(i8 addrspace(1)* %arg1, i8 addrspace(1)* %arg2, 
                  i1 %cmp) gc "statepoint-example" {

bci_0:
  br label %outer-loop

outer-loop:



  br label %inner-loop

inner-loop:










  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 2, i8 addrspace(1)* %arg1, i8 addrspace(1)* %arg2)
  br i1 %cmp, label %inner-loop, label %outer-inc

outer-inc:

  br label %outer-loop
}




define i64 addrspace(1)* @test7(i64 addrspace(1)* %obj, i64 addrspace(1)* %obj2, i1 %condition) gc "statepoint-example" {

entry:
  br i1 %condition, label %branch2, label %join

branch2:
  br i1 %condition, label %callbb, label %join2

callbb:
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  br label %join

join:





  
  
  
  %phi1 = phi i64 addrspace(1)* [ %obj, %entry ], [ %obj2, %callbb ]
  br label %join2

join2:




  %phi2 = phi i64 addrspace(1)* [ %obj, %join ], [ %obj2, %branch2 ]
  ret i64 addrspace(1)* %phi2
}


declare void @do_safepoint()

declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)
declare i32 @llvm.experimental.gc.statepoint.p0f_p1i8f(i64, i32, i8 addrspace(1)* ()*, i32, i32, ...)
declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidi64f(i64, i32, void (i64)*, i32, i32, ...)
declare i32 @llvm.experimental.gc.statepoint.p0f_i32p1i64f(i64, i32, i32 (i64 addrspace(1)*)*, i32, i32, ...)
declare i8 addrspace(1)* @llvm.experimental.gc.result.ptr.p1i8(i32) #3



