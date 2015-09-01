

define i64 addrspace(1)* @test(<2 x i64 addrspace(1)*> %vec, i32 %idx) gc "statepoint-example" {










entry:
  %obj = extractelement <2 x i64 addrspace(1)*> %vec, i32 %idx
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)

  ret i64 addrspace(1)* %obj
}

define i64 addrspace(1)* @test2(<2 x i64 addrspace(1)*>* %ptr, i1 %cnd, i32 %idx1, i32 %idx2) 
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
  %vec = phi <2 x i64 addrspace(1)*> [%obja, %taken], [%objb, %untaken]
  br i1 %cnd, label %taken2, label %untaken2
taken2:
  %obj0 = extractelement <2 x i64 addrspace(1)*> %vec, i32 %idx1
  br label %merge2
untaken2:
  %obj1 = extractelement <2 x i64 addrspace(1)*> %vec, i32 %idx2
  br label %merge2
merge2:





  %obj = phi i64 addrspace(1)* [%obj0, %taken2], [%obj1, %untaken2]
  %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  ret i64 addrspace(1)* %obj
}

define i64 addrspace(1)* @test3(i64 addrspace(1)* %ptr) 
    gc "statepoint-example" {

entry:
  %vec = insertelement <2 x i64 addrspace(1)*> undef, i64 addrspace(1)* %ptr, i32 0
  %obj = extractelement <2 x i64 addrspace(1)*> %vec, i32 0





   %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  ret i64 addrspace(1)* %obj
}
define i64 addrspace(1)* @test4(i64 addrspace(1)* %ptr) 
    gc "statepoint-example" {

entry:
  %derived = getelementptr i64, i64 addrspace(1)* %ptr, i64 16
  %veca = insertelement <2 x i64 addrspace(1)*> undef, i64 addrspace(1)* %derived, i32 0
  %vec = insertelement <2 x i64 addrspace(1)*> %veca, i64 addrspace(1)* %ptr, i32 1
  %obj = extractelement <2 x i64 addrspace(1)*> %vec, i32 0





   %safepoint_token = call i32 (i64, i32, void ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_isVoidf(i64 0, i32 0, void ()* @do_safepoint, i32 0, i32 0, i32 0, i32 0)
  ret i64 addrspace(1)* %obj
}

declare void @do_safepoint()

declare i32 @llvm.experimental.gc.statepoint.p0f_isVoidf(i64, i32, void ()*, i32, i32, ...)
