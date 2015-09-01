













@struct_byte = global {i8} zeroinitializer
@struct_2byte = global {i8,i8} zeroinitializer
@struct_3xi16 = global {[3 x i16]} zeroinitializer
@struct_6xi32 = global {[6 x i32]} zeroinitializer
@struct_128xi16 = global {[128 x i16]} zeroinitializer

declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1)

define inreg {i8} @ret_struct_i8() nounwind {
entry:
        %0 = load volatile {i8}, {i8}* @struct_byte
        ret {i8} %0
}























define inreg {i16} @ret_struct_i16() nounwind {
entry:
        %retval = alloca {i8,i8}, align 1
        %0 = bitcast {i8,i8}* %retval to i8*
        call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* getelementptr inbounds ({i8,i8}, {i8,i8}* @struct_2byte, i32 0, i32 0), i64 2, i32 1, i1 false)
        %1 = bitcast {i8,i8}* %retval to {i16}*
        %2 = load volatile {i16}, {i16}* %1
        ret {i16} %2
}
































define inreg {i48} @ret_struct_3xi16() nounwind {
entry:
        %0 = load volatile i48, i48* bitcast ({[3 x i16]}* @struct_3xi16 to i48*), align 2
        %1 = insertvalue {i48} undef, i48 %0, 0
        ret {i48} %1
}














































define void @ret_struct_128xi16({[128 x i16]}* sret %returnval) {
entry:
        %0 = bitcast {[128 x i16]}* %returnval to i8*
        call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ({[128 x i16]}* @struct_128xi16 to i8*), i64 256, i32 2, i1 false)
        ret void
}

























define {[6 x i32]} @ret_struct_6xi32() {
entry:
        %0 = load volatile {[6 x i32]}, {[6 x i32]}* @struct_6xi32, align 2
        ret {[6 x i32]} %0
}





















































