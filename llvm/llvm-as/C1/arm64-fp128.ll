

@lhs = global fp128 zeroinitializer, align 16
@rhs = global fp128 zeroinitializer, align 16

define fp128 @test_add() {


  %lhs = load fp128, fp128* @lhs, align 16
  %rhs = load fp128, fp128* @rhs, align 16



  %val = fadd fp128 %lhs, %rhs

  ret fp128 %val
}

define fp128 @test_sub() {


  %lhs = load fp128, fp128* @lhs, align 16
  %rhs = load fp128, fp128* @rhs, align 16



  %val = fsub fp128 %lhs, %rhs

  ret fp128 %val
}

define fp128 @test_mul() {


  %lhs = load fp128, fp128* @lhs, align 16
  %rhs = load fp128, fp128* @rhs, align 16



  %val = fmul fp128 %lhs, %rhs

  ret fp128 %val
}

define fp128 @test_div() {


  %lhs = load fp128, fp128* @lhs, align 16
  %rhs = load fp128, fp128* @rhs, align 16



  %val = fdiv fp128 %lhs, %rhs

  ret fp128 %val
}

@var32 = global i32 0
@var64 = global i64 0

define void @test_fptosi() {

  %val = load fp128, fp128* @lhs, align 16

  %val32 = fptosi fp128 %val to i32
  store i32 %val32, i32* @var32


  %val64 = fptosi fp128 %val to i64
  store i64 %val64, i64* @var64


  ret void
}

define void @test_fptoui() {

  %val = load fp128, fp128* @lhs, align 16

  %val32 = fptoui fp128 %val to i32
  store i32 %val32, i32* @var32


  %val64 = fptoui fp128 %val to i64
  store i64 %val64, i64* @var64


  ret void
}

define void @test_sitofp() {


  %src32 = load i32, i32* @var32
  %val32 = sitofp i32 %src32 to fp128
  store volatile fp128 %val32, fp128* @lhs


  %src64 = load i64, i64* @var64
  %val64 = sitofp i64 %src64 to fp128
  store volatile fp128 %val64, fp128* @lhs


  ret void
}

define void @test_uitofp() {


  %src32 = load i32, i32* @var32
  %val32 = uitofp i32 %src32 to fp128
  store volatile fp128 %val32, fp128* @lhs


  %src64 = load i64, i64* @var64
  %val64 = uitofp i64 %src64 to fp128
  store volatile fp128 %val64, fp128* @lhs


  ret void
}

define i1 @test_setcc1() {


  %lhs = load fp128, fp128* @lhs, align 16
  %rhs = load fp128, fp128* @rhs, align 16





  %val = fcmp ole fp128 %lhs, %rhs




  ret i1 %val

}

define i1 @test_setcc2() {


  %lhs = load fp128, fp128* @lhs, align 16
  %rhs = load fp128, fp128* @rhs, align 16



  %val = fcmp ugt fp128 %lhs, %rhs




  ret i1 %val

}

define i32 @test_br_cc() {


  %lhs = load fp128, fp128* @lhs, align 16
  %rhs = load fp128, fp128* @rhs, align 16



  
  %cond = fcmp olt fp128 %lhs, %rhs



  br i1 %cond, label %iftrue, label %iffalse

iftrue:
  ret i32 42



iffalse:
  ret i32 29


}

define void @test_select(i1 %cond, fp128 %lhs, fp128 %rhs) {


  %val = select i1 %cond, fp128 %lhs, fp128 %rhs
  store fp128 %val, fp128* @lhs, align 16






  ret void

}

@varfloat = global float 0.0, align 4
@vardouble = global double 0.0, align 8

define void @test_round() {


  %val = load fp128, fp128* @lhs, align 16

  %float = fptrunc fp128 %val to float
  store float %float, float* @varfloat, align 4



  %double = fptrunc fp128 %val to double
  store double %double, double* @vardouble, align 8



  ret void
}

define void @test_extend() {


  %val = load fp128, fp128* @lhs, align 16

  %float = load float, float* @varfloat
  %fromfloat = fpext float %float to fp128
  store volatile fp128 %fromfloat, fp128* @lhs, align 16



  %double = load double, double* @vardouble
  %fromdouble = fpext double %double to fp128
  store volatile fp128 %fromdouble, fp128* @lhs, align 16



  ret void

}

define fp128 @test_neg(fp128 %in) {






  
  
  %ret = fsub fp128 0xL00000000000000008000000000000000, %in




  ret fp128 %ret

}
