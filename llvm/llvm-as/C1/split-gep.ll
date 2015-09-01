





target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"


target triple = "nvptx64-unknown-unknown"

%struct.S = type { float, double }

@struct_array = global [1024 x %struct.S] zeroinitializer, align 16
@float_2d_array = global [32 x [32 x float]] zeroinitializer, align 4



define double* @struct(i32 %i) {
entry:
  %add = add nsw i32 %i, 5
  %idxprom = sext i32 %add to i64
  %p = getelementptr inbounds [1024 x %struct.S], [1024 x %struct.S]* @struct_array, i64 0, i64 %idxprom, i32 1
  ret double* %p
}






define float* @sext_add(i32 %i, i32 %j) {
entry:
  %0 = add i32 %i, 1
  %1 = sext i32 %0 to i64  
  %2 = add i32 %j, -2
  
  %3 = sext i32 %2 to i64
  %p = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 %1, i64 %3
  ret float* %p
}














define float* @ext_add_no_overflow(i64 %a, i32 %b, i64 %c, i32 %d) {
  %b1 = add nsw i32 %b, 1
  %b2 = sext i32 %b1 to i64
  %i = add i64 %a, %b2       
  %d1 = add nuw i32 %d, 1
  %d2 = zext i32 %d1 to i64
  %j = add i64 %c, %d2       
  %p = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 %i, i64 %j
  ret float* %p
}





define void @sext_zext(i32 %a, i32 %b, float** %out1, float** %out2) {
entry:
  %0 = add nsw nuw i32 %a, 1
  %1 = sext i32 %0 to i48
  %2 = zext i48 %1 to i64    
  %3 = add nsw i32 %b, 2
  %4 = sext i32 %3 to i48
  %5 = zext i48 %4 to i64    
  %p1 = getelementptr [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 %2, i64 %5
  store float* %p1, float** %out1
  %6 = add nuw i32 %a, 3
  %7 = zext i32 %6 to i48
  %8 = sext i48 %7 to i64 
  %9 = add nsw i32 %b, 4
  %10 = zext i32 %9 to i48
  %11 = sext i48 %10 to i64  
  %p2 = getelementptr [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 %8, i64 %11
  store float* %p2, float** %out2
  ret void
}








define float* @sext_or(i64 %a, i32 %b) {
entry:
  %b1 = shl i32 %b, 2
  %b2 = or i32 %b1, 1 
  %b3 = or i32 %b1, 4 
  %b2.ext = zext i32 %b2 to i64
  %b3.ext = sext i32 %b3 to i64
  %i = add i64 %a, %b2.ext
  %j = add i64 %a, %b3.ext
  %p = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 %i, i64 %j
  ret float* %p
}







define float* @expr(i64 %a, i64 %b, i64* %out) {
entry:
  %b5 = add i64 %b, 5
  %i = add i64 %b5, %a
  %p = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 %i, i64 0
  store i64 %b5, i64* %out
  ret float* %p
}






define float* @sext_expr(i32 %a, i32 %b, i32 %c, i64 %d) {
entry:
  %0 = add nsw i32 %c, 8
  %1 = add nsw i32 %b, %0
  %2 = add nsw i32 %a, %1
  %3 = sext i32 %2 to i64
  %i = add i64 %d, %3
  %p = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 0, i64 %i
  ret float* %p
}







define float* @sub(i64 %i, i64 %j) {
  %i2 = sub i64 %i, 5 
  %j2 = sub i64 5, %j 
  %p = getelementptr inbounds [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 %i2, i64 %j2
  ret float* %p
}





%struct.Packed = type <{ [3 x i32], [8 x i64] }> 


define i64* @packed_struct(i32 %i, i32 %j) {
entry:
  %s = alloca [1024 x %struct.Packed], align 16
  %add = add nsw i32 %j, 3
  %idxprom = sext i32 %add to i64
  %add1 = add nsw i32 %i, 1
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds [1024 x %struct.Packed], [1024 x %struct.Packed]* %s, i64 0, i64 %idxprom2, i32 1, i64 %idxprom
  ret i64* %arrayidx3
}








define float* @zext_expr(i32 %a, i32 %b) {
entry:
  %0 = add i32 %b, 8
  %1 = add nuw i32 %a, %0
  %i = zext i32 %1 to i64
  %p = getelementptr [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 0, i64 %i
  ret float* %p
}











define float* @i32_add(i32 %a) {
entry:
  %i = add i32 %a, 8
  %p = getelementptr [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 0, i32 %i
  ret float* %p
}








define float* @apint(i1 %a) {
entry:
  %0 = add nsw nuw i1 %a, 1
  %1 = sext i1 %0 to i4
  %2 = zext i4 %1 to i64         
  %p = getelementptr [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 0, i64 %2
  ret float* %p
}





define float* @and(i64 %a) {
entry:
  %0 = shl i64 %a, 2
  %1 = and i64 %0, 1
  %p = getelementptr [32 x [32 x float]], [32 x [32 x float]]* @float_2d_array, i64 0, i64 0, i64 %1
  ret float* %p
}






define float* @shl_add_or(i64 %a, float* %ptr) {

entry:
  %shl = shl i64 %a, 2
  %add = add i64 %shl, 12
  %or = or i64 %add, 1

  
  
  
  %p = getelementptr float, float* %ptr, i64 %or


  ret float* %p

}







%struct3 = type { i64, i32 }
%struct2 = type { %struct3, i32 }
%struct1 = type { i64, %struct2 }
%struct0 = type { i32, i32, i64*, [100 x %struct1] }
define %struct2* @sign_mod_unsign(%struct0* %ptr, i64 %idx) {

entry:
  %arrayidx = add nsw i64 %idx, -2

  %ptr2 = getelementptr inbounds %struct0, %struct0* %ptr, i64 0, i32 3, i64 %arrayidx, i32 1




  ret %struct2* %ptr2

}
