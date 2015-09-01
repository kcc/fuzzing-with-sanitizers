



declare arm_aapcscc void @bar()

@bigvar = global [16 x i32] zeroinitializer

define arm_aapcscc void @irq_fn() alignstack(8) "interrupt"="IRQ" {
  
  

  





















  
  











  call arm_aapcscc void @bar()
  ret void
}


define arm_aapcscc void @fiq_fn() alignstack(8) "interrupt"="FIQ" {


  




  






  %val = load volatile [16 x i32], [16 x i32]* @bigvar
  store volatile [16 x i32] %val, [16 x i32]* @bigvar
  ret void
}

define arm_aapcscc void @swi_fn() alignstack(8) "interrupt"="SWI" {










  %val = load volatile [16 x i32], [16 x i32]* @bigvar
  store volatile [16 x i32] %val, [16 x i32]* @bigvar
  ret void
}

define arm_aapcscc void @undef_fn() alignstack(8) "interrupt"="UNDEF" {










  call void @bar()
  ret void
}

define arm_aapcscc void @abort_fn() alignstack(8) "interrupt"="ABORT" {










  call void @bar()
  ret void
}

@var = global double 0.0



define arm_aapcscc void @floating_fn() alignstack(8) "interrupt"="IRQ" {





  %lhs = load volatile double, double* @var
  %rhs = load volatile double, double* @var
  %sum = fadd double %lhs, %rhs
  store double %sum, double* @var
  ret void
}
