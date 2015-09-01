


declare void @foo()


define i8 addrspace(1)* @test1(i8 addrspace(1)* %obj) gc "statepoint-example" {




entry:
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  ret i8 addrspace(1)* %obj
}


define i8 addrspace(1)* @test2(i8 addrspace(1)* %obj) gc "statepoint-example" {






entry:
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  ret i8 addrspace(1)* %obj
}


define i8 @test3(i8 addrspace(1)* %obj) gc "statepoint-example" {







entry:
  %derived = getelementptr i8, i8 addrspace(1)* %obj, i64 10
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)

  %a = load i8, i8 addrspace(1)* %derived
  %b = load i8, i8 addrspace(1)* %obj
  %c = sub i8 %a, %b
  ret i8 %c
}



define i8 addrspace(1)* @test4(i1 %cmp, i8 addrspace(1)* %obj) gc "statepoint-example" {
entry:
  br i1 %cmp, label %taken, label %untaken

taken:



  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  br label %merge

untaken:



  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  br label %merge

merge:



  ret i8 addrspace(1)* %obj
}


define i8 addrspace(1)* @test5(i8 addrspace(1)* %obj) gc "ocaml" {




entry:
  call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  ret i8 addrspace(1)* %obj
}

declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)