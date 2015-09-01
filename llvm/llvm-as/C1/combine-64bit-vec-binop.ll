



define double @test1_add(double %A, double %B) {
  %1 = bitcast double %A to <2 x i32>
  %2 = bitcast double %B to <2 x i32>
  %add = add <2 x i32> %1, %2
  %3 = bitcast <2 x i32> %add to double
  ret double %3
}






define double @test2_add(double %A, double %B) {
  %1 = bitcast double %A to <4 x i16>
  %2 = bitcast double %B to <4 x i16>
  %add = add <4 x i16> %1, %2
  %3 = bitcast <4 x i16> %add to double
  ret double %3
}





define double @test3_add(double %A, double %B) {
  %1 = bitcast double %A to <8 x i8>
  %2 = bitcast double %B to <8 x i8>
  %add = add <8 x i8> %1, %2
  %3 = bitcast <8 x i8> %add to double
  ret double %3
}






define double @test1_sub(double %A, double %B) {
  %1 = bitcast double %A to <2 x i32>
  %2 = bitcast double %B to <2 x i32>
  %sub = sub <2 x i32> %1, %2
  %3 = bitcast <2 x i32> %sub to double
  ret double %3
}






define double @test2_sub(double %A, double %B) {
  %1 = bitcast double %A to <4 x i16>
  %2 = bitcast double %B to <4 x i16>
  %sub = sub <4 x i16> %1, %2
  %3 = bitcast <4 x i16> %sub to double
  ret double %3
}






define double @test3_sub(double %A, double %B) {
  %1 = bitcast double %A to <8 x i8>
  %2 = bitcast double %B to <8 x i8>
  %sub = sub <8 x i8> %1, %2
  %3 = bitcast <8 x i8> %sub to double
  ret double %3
}






define double @test1_mul(double %A, double %B) {
  %1 = bitcast double %A to <2 x i32>
  %2 = bitcast double %B to <2 x i32>
  %mul = mul <2 x i32> %1, %2
  %3 = bitcast <2 x i32> %mul to double
  ret double %3
}






define double @test2_mul(double %A, double %B) {
  %1 = bitcast double %A to <4 x i16>
  %2 = bitcast double %B to <4 x i16>
  %mul = mul <4 x i16> %1, %2
  %3 = bitcast <4 x i16> %mul to double
  ret double %3
}






define double @test3_mul(double %A, double %B) {
  %1 = bitcast double %A to <8 x i8>
  %2 = bitcast double %B to <8 x i8>
  %mul = mul <8 x i8> %1, %2
  %3 = bitcast <8 x i8> %mul to double
  ret double %3
}






define double @test1_and(double %A, double %B) {
  %1 = bitcast double %A to <2 x i32>
  %2 = bitcast double %B to <2 x i32>
  %and = and <2 x i32> %1, %2
  %3 = bitcast <2 x i32> %and to double
  ret double %3
}






define double @test2_and(double %A, double %B) {
  %1 = bitcast double %A to <4 x i16>
  %2 = bitcast double %B to <4 x i16>
  %and = and <4 x i16> %1, %2
  %3 = bitcast <4 x i16> %and to double
  ret double %3
}






define double @test3_and(double %A, double %B) {
  %1 = bitcast double %A to <8 x i8>
  %2 = bitcast double %B to <8 x i8>
  %and = and <8 x i8> %1, %2
  %3 = bitcast <8 x i8> %and to double
  ret double %3
}






define double @test1_or(double %A, double %B) {
  %1 = bitcast double %A to <2 x i32>
  %2 = bitcast double %B to <2 x i32>
  %or = or <2 x i32> %1, %2
  %3 = bitcast <2 x i32> %or to double
  ret double %3
}






define double @test2_or(double %A, double %B) {
  %1 = bitcast double %A to <4 x i16>
  %2 = bitcast double %B to <4 x i16>
  %or = or <4 x i16> %1, %2
  %3 = bitcast <4 x i16> %or to double
  ret double %3
}






define double @test3_or(double %A, double %B) {
  %1 = bitcast double %A to <8 x i8>
  %2 = bitcast double %B to <8 x i8>
  %or = or <8 x i8> %1, %2
  %3 = bitcast <8 x i8> %or to double
  ret double %3
}






define double @test1_xor(double %A, double %B) {
  %1 = bitcast double %A to <2 x i32>
  %2 = bitcast double %B to <2 x i32>
  %xor = xor <2 x i32> %1, %2
  %3 = bitcast <2 x i32> %xor to double
  ret double %3
}






define double @test2_xor(double %A, double %B) {
  %1 = bitcast double %A to <4 x i16>
  %2 = bitcast double %B to <4 x i16>
  %xor = xor <4 x i16> %1, %2
  %3 = bitcast <4 x i16> %xor to double
  ret double %3
}






define double @test3_xor(double %A, double %B) {
  %1 = bitcast double %A to <8 x i8>
  %2 = bitcast double %B to <8 x i8>
  %xor = xor <8 x i8> %1, %2
  %3 = bitcast <8 x i8> %xor to double
  ret double %3
}






define double @test_fadd(double %A, double %B) {
  %1 = bitcast double %A to <2 x float>
  %2 = bitcast double %B to <2 x float>
  %add = fadd <2 x float> %1, %2
  %3 = bitcast <2 x float> %add to double
  ret double %3
}





define double @test_fsub(double %A, double %B) {
  %1 = bitcast double %A to <2 x float>
  %2 = bitcast double %B to <2 x float>
  %sub = fsub <2 x float> %1, %2
  %3 = bitcast <2 x float> %sub to double
  ret double %3
}





define double @test_fmul(double %A, double %B) {
  %1 = bitcast double %A to <2 x float>
  %2 = bitcast double %B to <2 x float>
  %mul = fmul <2 x float> %1, %2
  %3 = bitcast <2 x float> %mul to double
  ret double %3
}





