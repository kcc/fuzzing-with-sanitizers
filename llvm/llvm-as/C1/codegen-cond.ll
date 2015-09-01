


define i1 @test(i8 addrspace(1)* %p, i1 %rare) gc "statepoint-example" {

entry:
   %cond = icmp eq i8 addrspace(1)* %p, null
   br i1 %rare, label %safepoint, label %continue, !prof !0
safepoint:
   call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 2882400000, i32 0, void ()* @safepoint, i32 0, i32 0, i32 0, i32 0)
   br label %continue
continue:






   br i1 %cond, label %taken, label %untaken
taken:
   ret i1 true
untaken:
   ret i1 false
}


define i1 @test2(i8 addrspace(1)* %p, i8 addrspace(1)* %q, i1 %rare) 
    gc "statepoint-example" {

entry:   
   %cond = icmp eq i8 addrspace(1)* %p, %q
   br i1 %rare, label %safepoint, label %continue, !prof !0
safepoint:
   call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 2882400000, i32 0, void ()* @safepoint, i32 0, i32 0, i32 0, i32 0)
   br label %continue
continue:









   br i1 %cond, label %taken, label %untaken
taken:
   ret i1 true
untaken:
   ret i1 false
}



define i1 @test3(i8 addrspace(1)* %p, i8 addrspace(1)* %q, i1 %rare) 
    gc "statepoint-example" {

entry:   
   call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 2882400000, i32 0, void ()* @safepoint, i32 0, i32 0, i32 0, i32 0)



   %cond = icmp eq i8 addrspace(1)* %p, %q
   br i1 %cond, label %taken, label %untaken
taken:
   ret i1 true
untaken:
   ret i1 false
}

declare void @safepoint()
declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)

!0 = !{!"branch_weights", i32 1, i32 10000}
