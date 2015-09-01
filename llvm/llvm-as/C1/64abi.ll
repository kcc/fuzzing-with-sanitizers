
















define void @intarg(i8  %a0,   
                    i8  %a1,   
                    i16 %a2,   
                    i32 %a3,   
                    i8* %a4,   
                    i32 %a5,   
                    i32 signext %a6,   
                    i8* %a7) { 
  store i8 %a0, i8* %a4
  store i8 %a1, i8* %a4
  %p16 = bitcast i8* %a4 to i16*
  store i16 %a2, i16* %p16
  %p32 = bitcast i8* %a4 to i32*
  store i32 %a3, i32* %p32
  %pp = bitcast i8* %a4 to i8**
  store i8* %a4, i8** %pp
  store i32 %a5, i32* %p32
  store i32 %a6, i32* %p32
  store i8* %a7, i8** %pp
  ret void
}












define void @call_intarg(i32 %i0, i8* %i1) {
  call void @intarg(i8 0, i8 1, i16 2, i32 3, i8* undef, i32 5, i32 %i0, i8* %i1)
  ret void
}









define double @floatarg(float %a0,    
                        double %a1,   
                        double %a2,   
                        double %a3,   
                        float %a4,    
                        float %a5,    
                        float %a6,    
                        float %a7,    
                        float %a8,    
                        float %a9,    
                        float %a10,   
                        float %a11,   
                        float %a12,   
                        float %a13,   
                        float %a14,   
                        float %a15,   
                        float %a16,   
                        double %a17) { 
  %d0 = fpext float %a0 to double
  %s1 = fadd double %a1, %d0
  %s2 = fadd double %a2, %s1
  %s3 = fadd double %a3, %s2
  %s16 = fadd float %a15, %a16
  %d16 = fpext float %s16 to double
  %s17 = fadd double %d16, %s3
  ret double %s17
}











define void @call_floatarg(float %f1, double %d2, float %f5, double *%p) {
  %r = call double @floatarg(float %f5, double %d2, double %d2, double %d2,
                             float %f5, float %f5,  float %f5,  float %f5,
                             float %f5, float %f5,  float %f5,  float %f5,
                             float %f5, float %f5,  float %f5,  float %f5,
                             float %f1, double %d2)
  store double %r, double* %p
  ret void
}







define void @mixedarg(i8 %a0,      
                      float %a1,   
                      i16 %a2,     
                      double %a3,  
                      i13 %a4,     
                      float %a5,   
                      i64 %a6,     
                      double *%a7, 
                      double %a8,  
                      i16* %a9) {  
  %d1 = fpext float %a1 to double
  %s3 = fadd double %a3, %d1
  %s8 = fadd double %a8, %s3
  store double %s8, double* %a7
  store i16 %a2, i16* %a9
  ret void
}









define void @call_mixedarg(i64 %i0, double %f2, i16* %i2) {
  call void @mixedarg(i8 undef,
                      float undef,
                      i16 undef,
                      double %f2,
                      i13 undef,
                      float undef,
                      i64 %i0,
                      double* undef,
                      double %f2,
                      i16* %i2)
  ret void
}







define i32 @inreg_fi(i32 inreg %a0,     
                     float inreg %a1) { 
  %b1 = fptosi float %a1 to i32
  %rv = sub i32 %a0, %b1
  ret i32 %rv
}







define void @call_inreg_fi(i32* %p, i32 %i1, float %f5) {
  %x = call i32 @inreg_fi(i32 %i1, float %f5)
  ret void
}



define float @inreg_ff(float inreg %a0,   
                       float inreg %a1) { 
  %rv = fsub float %a0, %a1
  ret float %rv
}





define void @call_inreg_ff(i32* %p, float %f3, float %f5) {
  %x = call float @inreg_ff(float %f3, float %f5)
  ret void
}




define i32 @inreg_if(float inreg %a0, 
                     i32 inreg %a1) { 
  %b0 = fptosi float %a0 to i32
  %rv = sub i32 %a1, %b0
  ret i32 %rv
}





define void @call_inreg_if(i32* %p, float %f3, i32 %i2) {
  %x = call i32 @inreg_if(float %f3, i32 %i2)
  ret void
}





define i32 @inreg_ii(i32 inreg %a0,   
                     i32 inreg %a1) { 
  %rv = sub i32 %a1, %a0
  ret i32 %rv
}






define void @call_inreg_ii(i32* %p, i32 %i1, i32 %i2) {
  %x = call i32 @inreg_ii(i32 %i1, i32 %i2)
  ret void
}





define { i64, i64 } @ret_i64_pair(i32 %a0, i32 %a1, i64* %p, i64* %q) {
  %r1 = load i64, i64* %p
  %rv1 = insertvalue { i64, i64 } undef, i64 %r1, 0
  store i64 0, i64* %p
  %r2 = load i64, i64* %q
  %rv2 = insertvalue { i64, i64 } %rv1, i64 %r2, 1
  ret { i64, i64 } %rv2
}





define void @call_ret_i64_pair(i64* %i0) {
  %rv = call { i64, i64 } @ret_i64_pair(i32 undef, i32 undef,
                                        i64* undef, i64* undef)
  %e0 = extractvalue { i64, i64 } %rv, 0
  store i64 %e0, i64* %i0
  %e1 = extractvalue { i64, i64 } %rv, 1
  store i64 %e1, i64* %i0
  ret void
}





define { i32, float } @ret_i32_float_pair(i32 %a0, i32 %a1,
                                          i32* %p, float* %q) {
  %r1 = load i32, i32* %p
  %rv1 = insertvalue { i32, float } undef, i32 %r1, 0
  store i32 0, i32* %p
  %r2 = load float, float* %q
  %rv2 = insertvalue { i32, float } %rv1, float %r2, 1
  ret { i32, float } %rv2
}





define void @call_ret_i32_float_pair(i32* %i0, float* %i1) {
  %rv = call { i32, float } @ret_i32_float_pair(i32 undef, i32 undef,
                                                i32* undef, float* undef)
  %e0 = extractvalue { i32, float } %rv, 0
  store i32 %e0, i32* %i0
  %e1 = extractvalue { i32, float } %rv, 1
  store float %e1, float* %i1
  ret void
}






define inreg { i32, float } @ret_i32_float_packed(i32 %a0, i32 %a1,
                                                  i32* %p, float* %q) {
  %r1 = load i32, i32* %p
  %rv1 = insertvalue { i32, float } undef, i32 %r1, 0
  store i32 0, i32* %p
  %r2 = load float, float* %q
  %rv2 = insertvalue { i32, float } %rv1, float %r2, 1
  ret { i32, float } %rv2
}






define void @call_ret_i32_float_packed(i32* %i0, float* %i1) {
  %rv = call { i32, float } @ret_i32_float_packed(i32 undef, i32 undef,
                                                  i32* undef, float* undef)
  %e0 = extractvalue { i32, float } %rv, 0
  store i32 %e0, i32* %i0
  %e1 = extractvalue { i32, float } %rv, 1
  store float %e1, float* %i1
  ret void
}








define inreg { i32, i32 } @ret_i32_packed(i32 %a0, i32 %a1,
                                          i32* %p, i32* %q) {
  %r1 = load i32, i32* %p
  %rv1 = insertvalue { i32, i32 } undef, i32 %r1, 1
  store i32 0, i32* %p
  %r2 = load i32, i32* %q
  %rv2 = insertvalue { i32, i32 } %rv1, i32 %r2, 0
  ret { i32, i32 } %rv2
}






define void @call_ret_i32_packed(i32* %i0, i32* %i1) {
  %rv = call { i32, i32 } @ret_i32_packed(i32 undef, i32 undef,
                                          i32* undef, i32* undef)
  %e0 = extractvalue { i32, i32 } %rv, 0
  store i32 %e0, i32* %i0
  %e1 = extractvalue { i32, i32 } %rv, 1
  store i32 %e1, i32* %i1
  ret void
}




define signext i32 @ret_sext(i32 %a0) {
  ret i32 %a0
}



define zeroext i32 @ret_zext(i32 %a0) {
  ret i32 %a0
}



define signext i32 @ret_nosext(i32 signext %a0) {
  ret i32 %a0
}



define signext i32 @ret_nozext(i32 signext %a0) {
  ret i32 %a0
}






define i32 @test_register_directive(i32 %i0) {
entry:
  %0 = add nsw i32 %i0, 2
  %1 = add nsw i32 %i0, 3
  tail call void asm sideeffect "", "r,r,~{l0},~{l1},~{l2},~{l3},~{l4},~{l5},~{l6},~{l7},~{i0},~{i1},~{i2},~{i3},~{i4},~{i5},~{i6},~{i7},~{o0},~{o1},~{o2},~{o3},~{o4},~{o5},~{o6},~{o7},~{g1},~{g4},~{g5},~{g6},~{g7}"(i32 %0, i32 %1)
  %2 = add nsw i32 %0, %1
  ret i32 %2
}












define i32 @test_large_stack() {
entry:
  %buffer1 = alloca [16384 x i8], align 8
  %buffer1.sub = getelementptr inbounds [16384 x i8], [16384 x i8]* %buffer1, i32 0, i32 0
  %0 = call i32 @use_buf(i32 16384, i8* %buffer1.sub)
  ret i32 %0
}

declare i32 @use_buf(i32, i8*)









define fp128 @test_fp128_args(fp128 %a, fp128 %b) {
entry:
  %0 = fadd fp128 %a, %b
  ret fp128 %0
}

declare i64 @receive_fp128(i64 %a, ...)







define i64 @test_fp128_variable_args(i64 %a, fp128 %b) {
entry:
  %0 = call i64 (i64, ...) @receive_fp128(i64 %a, fp128 %b)
  ret i64 %0
}











define inreg float @test_call_libfunc(float %arg0, float %arg1) {
entry:
  %0 = tail call inreg float @cosf(float %arg1)
  %1 = tail call inreg float @sinf(float %arg0)
  %2 = fmul float %0, %1
  ret float %2
}

declare inreg float @cosf(float %arg) readnone nounwind
declare inreg float @sinf(float %arg) readnone nounwind


