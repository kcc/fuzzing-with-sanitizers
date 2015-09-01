

declare i64 addrspace(1)* @generate_obj()
declare void @use_obj(i64 addrspace(1)*)



define void @def_use_safepoint() gc "statepoint-example" {

entry:
  %obj = call i64 addrspace(1)* @generate_obj()
  br label %loop

loop:



  call void @use_obj(i64 addrspace(1)* %obj)
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  br label %loop
}

declare void @do_safepoint()

declare void @parse_point(i64 addrspace(1)*)

define i64 addrspace(1)* @test1(i32 %caller, i8 addrspace(1)* %a, i8 addrspace(1)* %b, i32 %unknown) gc "statepoint-example" {

 entry:
  br i1 undef, label %left, label %right

 left:
  %a.cast = bitcast i8 addrspace(1)* %a to i64 addrspace(1)*










  switch i32 %unknown, label %right [ i32 0, label %merge
                                      i32 1, label %merge
                                      i32 5, label %merge
                                      i32 3, label %right ]

 right:
  %b.cast = bitcast i8 addrspace(1)* %b to i64 addrspace(1)*
  br label %merge




 merge:


  %value = phi i64 addrspace(1)* [ %a.cast, %left], [ %a.cast, %left], [ %a.cast, %left], [ %b.cast, %right]
  %safepoint_token = call i32 (i64, i32, void (i64 addrspace(1)*)*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidp1i64f(i64 0, i32 0, void (i64 addrspace(1)*)* @parse_point, i32 1, i32 0, i64 addrspace(1)* %value, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0)

  ret i64 addrspace(1)* %value
}





define void @test2(i1 %cnd, i64 addrspace(1)* %base_obj, i64 addrspace(1)* %base_arg2)  gc "statepoint-example" {

entry:
  %obj = getelementptr i64, i64 addrspace(1)* %base_obj, i32 1
  br label %loop

loop:                                             












  %current = phi i64 addrspace(1)* [ %obj, %entry ], [ %next, %loop ]
  %extra = phi i64 addrspace(1)* [ %obj, %entry ], [ %extra2, %loop ]
  %nexta = getelementptr i64, i64 addrspace(1)* %current, i32 1
  %next = select i1 %cnd, i64 addrspace(1)* %nexta, i64 addrspace(1)* %base_arg2
  %extra2 = select i1 %cnd, i64 addrspace(1)* %nexta, i64 addrspace(1)* %base_arg2
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  br label %loop
}

define i64 addrspace(1)* @test3(i1 %cnd, i64 addrspace(1)* %obj, 
                                i64 addrspace(1)* %obj2)
    gc "statepoint-example" {

entry:
  br i1 %cnd, label %merge, label %taken
taken:
  br label %merge
merge:



  %bdv = phi i64 addrspace(1)* [ %obj, %entry ], [ %obj2, %taken ]
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @foo, i32 0, i32 0, i32 0, i32 5, i32 0, i32 -1, i32 0, i32 0, i32 0)
  ret i64 addrspace(1)* %bdv
}


declare void @foo()
declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)
declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidp1i64f(i64, i32, void (i64 addrspace(1)*)*, i32, i32, ...)
