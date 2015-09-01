


declare i8 addrspace(1)* @llvm.xcore.getst.p1i8.p1i8(i8 addrspace(1)* %r)
declare void @llvm.xcore.msync.p1i8(i8 addrspace(1)* %r)
declare void @llvm.xcore.ssync()
declare void @llvm.xcore.mjoin.p1i8(i8 addrspace(1)* %r)
declare void @llvm.xcore.initsp.p1i8(i8 addrspace(1)* %r, i8* %value)
declare void @llvm.xcore.initpc.p1i8(i8 addrspace(1)* %r, i8* %value)
declare void @llvm.xcore.initlr.p1i8(i8 addrspace(1)* %r, i8* %value)
declare void @llvm.xcore.initcp.p1i8(i8 addrspace(1)* %r, i8* %value)
declare void @llvm.xcore.initdp.p1i8(i8 addrspace(1)* %r, i8* %value)

define i8 addrspace(1)* @test_getst(i8 addrspace(1)* %r) {


  %result = call i8 addrspace(1)* @llvm.xcore.getst.p1i8.p1i8(i8 addrspace(1)* %r)
  ret i8 addrspace(1)* %result
}

define void @test_ssync() {


  call void @llvm.xcore.ssync()
  ret void
}

define void @test_mjoin(i8 addrspace(1)* %r) {


  call void @llvm.xcore.mjoin.p1i8(i8 addrspace(1)* %r)
  ret void
}

define void @test_initsp(i8 addrspace(1)* %t, i8* %src) {


  call void @llvm.xcore.initsp.p1i8(i8 addrspace(1)* %t, i8* %src)
  ret void
}

define void @test_initpc(i8 addrspace(1)* %t, i8* %src) {


  call void @llvm.xcore.initpc.p1i8(i8 addrspace(1)* %t, i8* %src)
  ret void
}

define void @test_initlr(i8 addrspace(1)* %t, i8* %src) {


  call void @llvm.xcore.initlr.p1i8(i8 addrspace(1)* %t, i8* %src)
  ret void
}

define void @test_initcp(i8 addrspace(1)* %t, i8* %src) {


  call void @llvm.xcore.initcp.p1i8(i8 addrspace(1)* %t, i8* %src)
  ret void
}

define void @test_initdp(i8 addrspace(1)* %t, i8* %src) {


  call void @llvm.xcore.initdp.p1i8(i8 addrspace(1)* %t, i8* %src)
  ret void
}

@tl = thread_local global [3 x i32] zeroinitializer
@tle = external thread_local global [2 x i32]

define i32* @f_tl() {







  ret i32* getelementptr inbounds ([3 x i32], [3 x i32]* @tl, i32 0, i32 2)
}

define i32* @f_tle() {






  ret i32* getelementptr inbounds ([2 x i32], [2 x i32]* @tle, i32 0, i32 0)
}

define i32 @f_tlExpr () {






  ret i32 add(
      i32 ptrtoint( i32* getelementptr inbounds ([2 x i32], [2 x i32]* @tle, i32 0, i32 0) to i32),
      i32 ptrtoint( i32* getelementptr inbounds ([2 x i32], [2 x i32]* @tle, i32 0, i32 0) to i32))
}

define void @phiNode1() {






entry:
  br label %ConstantExpPhiNode
ConstantExpPhiNode:
  %ptr = phi i32* [ getelementptr inbounds ([3 x i32], [3 x i32]* @tl, i32 0, i32 0), %entry ],
                  [ getelementptr inbounds ([3 x i32], [3 x i32]* @tl, i32 0, i32 0), %ConstantExpPhiNode ]
  br label %ConstantExpPhiNode
exit:
  ret void
}

define void @phiNode2( i1 %bool) {










entry:
  br i1 %bool, label %ConstantExpPhiNode, label %exit
ConstantExpPhiNode:
  %ptr = phi i32* [ getelementptr inbounds ([3 x i32], [3 x i32]* @tl, i32 0, i32 0), %entry ],
                  [ getelementptr inbounds ([3 x i32], [3 x i32]* @tl, i32 0, i32 0), %ConstantExpPhiNode ]
  br label %ConstantExpPhiNode
exit:
  ret void
}



