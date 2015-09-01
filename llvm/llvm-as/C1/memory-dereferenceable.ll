




target datalayout = "e"

declare zeroext i1 @return_i1()

@globalstr = global [6 x i8] c"hello\00"
@globali32ptr = external global i32*

%struct.A = type { [8 x i8], [5 x i8] }
@globalstruct = external global %struct.A

@globalptr.align1 = external global i8, align 1
@globalptr.align16 = external global i8, align 16

define void @test(i32 addrspace(1)* dereferenceable(8) %dparam,
                  i8 addrspace(1)* dereferenceable(32) align 1 %dparam.align1,
                  i8 addrspace(1)* dereferenceable(32) align 16 %dparam.align16)
    gc "statepoint-example" {

entry:

    %globalptr = getelementptr inbounds [6 x i8], [6 x i8]* @globalstr, i32 0, i32 0
    %load1 = load i8, i8* %globalptr


    %alloca = alloca i1
    %load2 = load i1, i1* %alloca


    %load3 = load i32, i32 addrspace(1)* %dparam


    %tok = tail call i32 (i64, i32, i1 ()*, i32, i32, ...) @llvm.experimental.gc.statepoint.p0f_i1f(i64 0, i32 0, i1 ()* @return_i1, i32 0, i32 0, i32 0, i32 0, i32 addrspace(1)* %dparam)
    %relocate = call i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32 %tok, i32 7, i32 7)
    %load4 = load i32, i32 addrspace(1)* %relocate


    %nparam = getelementptr i32, i32 addrspace(1)* %dparam, i32 5
    %load5 = load i32, i32 addrspace(1)* %nparam

    

    %nd_load = load i32*, i32** @globali32ptr
    %load6 = load i32, i32* %nd_load

    

    %d4_load = load i32*, i32** @globali32ptr, !dereferenceable !0
    %load7 = load i32, i32* %d4_load

    

    %d2_load = load i32*, i32** @globali32ptr, !dereferenceable !1
    %load8 = load i32, i32* %d2_load

    

    %d_or_null_load = load i32*, i32** @globali32ptr, !dereferenceable_or_null !0
    %load9 = load i32, i32* %d_or_null_load

    

    %d_or_null_non_null_load = load i32*, i32** @globali32ptr, !nonnull !2, !dereferenceable_or_null !0
    %load10 = load i32, i32* %d_or_null_non_null_load

    

    %within_allocation = getelementptr inbounds %struct.A, %struct.A* @globalstruct, i64 0, i32 0, i64 10
    %load11 = load i8, i8* %within_allocation

    

    %outside_allocation = getelementptr inbounds %struct.A, %struct.A* @globalstruct, i64 0, i32 1, i64 10
    %load12 = load i8, i8* %outside_allocation

    


    %load13 = load i8, i8* @globalptr.align1, align 16
    %load14 = load i8, i8* @globalptr.align16, align 16

    


    %load15 = load i8, i8 addrspace(1)* %dparam.align1, align 16
    %load16 = load i8, i8 addrspace(1)* %dparam.align16, align 16

    


    %alloca.align1 = alloca i1, align 1
    %alloca.align16 = alloca i1, align 16
    %load17 = load i1, i1* %alloca.align1, align 16
    %load18 = load i1, i1* %alloca.align16, align 16

    




    %gep.align1.offset1 = getelementptr inbounds i8, i8 addrspace(1)* %dparam.align1, i32 1
    %gep.align16.offset1 = getelementptr inbounds i8, i8 addrspace(1)* %dparam.align16, i32 1
    %gep.align1.offset16 = getelementptr inbounds i8, i8 addrspace(1)* %dparam.align1, i32 16
    %gep.align16.offset16 = getelementptr inbounds i8, i8 addrspace(1)* %dparam.align16, i32 16
    %load19 = load i8, i8 addrspace(1)* %gep.align1.offset1, align 16
    %load20 = load i8, i8 addrspace(1)* %gep.align16.offset1, align 16
    %load21 = load i8, i8 addrspace(1)* %gep.align1.offset16, align 16
    %load22 = load i8, i8 addrspace(1)* %gep.align16.offset16, align 16

    ret void
}

declare i32 @llvm.experimental.gc.statepoint.p0f_i1f(i64, i32, i1 ()*, i32, i32, ...)
declare i32 addrspace(1)* @llvm.experimental.gc.relocate.p1i32(i32, i32, i32)

!0 = !{i64 4}
!1 = !{i64 2}
!2 = !{}
