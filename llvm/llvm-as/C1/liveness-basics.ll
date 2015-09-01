






define i64 addrspace(1)* @test1(i1 %cmp, i64 addrspace(1)* %obj) gc "statepoint-example" {

entry:
  br i1 %cmp, label %taken, label %untaken

taken:





  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  br label %merge

untaken:





  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  br label %merge

merge:



  ret i64 addrspace(1)* %obj
}


define i64 addrspace(1)* @test2(i1 %cmp, i64 addrspace(1)** %loc) gc "statepoint-example" {

entry:



  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  br i1 %cmp, label %taken, label %untaken

taken:







  %obj = load i64 addrspace(1)*, i64 addrspace(1)** %loc
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  ret i64 addrspace(1)* %obj

untaken:
  ret i64 addrspace(1)* null
}



define i64 addrspace(1)* @test3(i1 %cmp, i64 addrspace(1)** %loc) gc "statepoint-example" {

entry:
  br i1 %cmp, label %taken, label %untaken

taken:







  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  %obj = load i64 addrspace(1)*, i64 addrspace(1)** %loc
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  br label %merge

untaken:



  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  br label %merge

merge:
  %phi = phi i64 addrspace(1)* [ %obj, %taken ], [ null, %untaken ]
  ret i64 addrspace(1)* %phi
}



define i64 addrspace(1)* @test4(i1 %cmp, i64 addrspace(1)* %obj) gc "statepoint-example" {

entry:















  %derived = getelementptr i64, i64 addrspace(1)* %obj, i64 8
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)

  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  ret i64 addrspace(1)* %derived
}

declare void @consume(...) readonly




define i64 addrspace(1)* @test5(i1 %cmp, i64 addrspace(1)* %obj) gc "statepoint-example" {

entry:
  br i1 %cmp, label %taken, label %untaken

taken:





  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 0)
  br label %merge

untaken:


  br label %merge

merge:





  %obj2a = phi i64 addrspace(1)* [ %obj, %taken ], [null, %untaken]
  call void (...) @consume(i64 addrspace(1)* %obj2a)
  br label %final
final:



  call void (...) @consume(i64 addrspace(1)* %obj2a)
  ret i64 addrspace(1)* %obj
}

declare void @foo()

declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)
