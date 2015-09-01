


%myStruct = type { i64 , i8, i32 }

@var8 = global i8 0
@var32 = global i32 0
@var64 = global i64 0
@var128 = global i128 0
@varfloat = global float 0.0
@vardouble = global double 0.0
@varstruct = global %myStruct zeroinitializer

define void @take_i8s(i8 %val1, i8 %val2) {

    store i8 %val2, i8* @var8
    
    

    ret void
}

define void @add_floats(float %val1, float %val2) {

    %newval = fadd float %val1, %val2


    store float %newval, float* @varfloat

    ret void
}



define void @take_struct(%myStruct* byval %structval) {

    %addr0 = getelementptr %myStruct, %myStruct* %structval, i64 0, i32 2
    %addr1 = getelementptr %myStruct, %myStruct* %structval, i64 0, i32 0

    %val0 = load volatile i32, i32* %addr0
    

    store volatile i32 %val0, i32* @var32


    %val1 = load volatile i64, i64* %addr1

    store volatile i64 %val1, i64* @var64


    ret void
}


define void @check_byval_align(i32* byval %ignore, %myStruct* byval align 16 %structval) {


    %addr0 = getelementptr %myStruct, %myStruct* %structval, i64 0, i32 2
    %addr1 = getelementptr %myStruct, %myStruct* %structval, i64 0, i32 0

    %val0 = load volatile i32, i32* %addr0
    

    store i32 %val0, i32* @var32


    %val1 = load volatile i64, i64* %addr1

    store i64 %val1, i64* @var64


    ret void
}

define i32 @return_int() {

    %val = load i32, i32* @var32
    ret i32 %val

    

}

define double @return_double() {

    ret double 3.14


}




define [2 x i64] @return_struct() {

    %addr = bitcast %myStruct* @varstruct to [2 x i64]*
    %val = load [2 x i64], [2 x i64]* %addr
    ret [2 x i64] %val


    

}





define void @return_large_struct(%myStruct* sret %retval) {

    %addr0 = getelementptr %myStruct, %myStruct* %retval, i64 0, i32 0
    %addr1 = getelementptr %myStruct, %myStruct* %retval, i64 0, i32 1
    %addr2 = getelementptr %myStruct, %myStruct* %retval, i64 0, i32 2

    store i64 42, i64* %addr0
    store i8 2, i8* %addr1
    store i32 9, i32* %addr2




    ret void
}




define i32 @struct_on_stack(i8 %var0, i16 %var1, i32 %var2, i64 %var3, i128 %var45,
                          i32* %var6, %myStruct* byval %struct, i32* byval %stacked,
                          double %notstacked) {

    %addr = getelementptr %myStruct, %myStruct* %struct, i64 0, i32 0
    %val64 = load volatile i64, i64* %addr
    store volatile i64 %val64, i64* @var64
    



    store volatile double %notstacked, double* @vardouble




    %retval = load volatile i32, i32* %stacked
    ret i32 %retval

}

define void @stacked_fpu(float %var0, double %var1, float %var2, float %var3,
                         float %var4, float %var5, float %var6, float %var7,
                         float %var8) {

    store float %var8, float* @varfloat
    
    



    ret void
}



define i64 @check_i128_regalign(i32 %val0, i128 %val1, i64 %val2) {

    store i128 %val1, i128* @var128



    ret i64 %val2

}

define void @check_i128_stackalign(i32 %val0, i32 %val1, i32 %val2, i32 %val3,
                                   i32 %val4, i32 %val5, i32 %val6, i32 %val7,
                                   i32 %stack1, i128 %stack2) {

    store i128 %stack2, i128* @var128
    



    


    ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8*, i8*, i32, i32, i1)

define i32 @test_extern() {

  call void @llvm.memcpy.p0i8.p0i8.i32(i8* undef, i8* undef, i32 undef, i32 4, i1 0)

  ret i32 0
}




define i16 @stacked_i16(i32 %val0, i32 %val1, i32 %val2, i32 %val3,
                        i32 %val4, i32 %val5, i32 %val6, i32 %val7,
                        i16 %stack1) {

  ret i16 %stack1
}
