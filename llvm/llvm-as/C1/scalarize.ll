






%i4 = type <4 x i32>
%i8 = type <2 x i64>



declare %i4 @llvm.bswap.v4i32(%i4)
declare %i8 @llvm.bswap.v2i64(%i8)

declare %i4 @llvm.ctpop.v4i32(%i4)
declare %i8 @llvm.ctpop.v2i64(%i8)



define void @test_scalarized_intrinsics() {
        %r1 = add %i8 undef, undef



        %r2 = call %i4 @llvm.bswap.v4i32(%i4 undef)


        %r3 = call %i8 @llvm.bswap.v2i64(%i8 undef)



        %r4 = call %i4 @llvm.ctpop.v4i32(%i4 undef)


        %r5 = call %i8 @llvm.ctpop.v2i64(%i8 undef)



        ret void
}
