

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin13.3.0"

@a = common global double 0.000000e+00, align 8

define i32 @fn1() {
entry:
  %init = load double, double* @a, align 8
  br label %loop

loop:
  %phi = phi double [ %add2, %loop ], [ %init, %entry ]
  %postadd1_phi = phi double [ %postadd1, %loop ], [ %init, %entry ]
  %postadd2_phi = phi double [ %postadd2, %loop ], [ %init, %entry ]
  %add1 = fadd double %postadd1_phi, undef
  %add2 = fadd double %postadd2_phi, %phi
  %mul2 = fmul double %add2, 0.000000e+00
  %binaryop_B = fadd double %postadd1_phi, %mul2
  %mul1 = fmul double %add1, 0.000000e+00
  %tmp = fadd double %postadd2_phi, 0.000000e+00

  
  
  
  
  
  
  %binary_V = fadd double %mul1, %binaryop_B

  %postadd1 = fadd double %binary_V, 0.000000e+00
  %postadd2 = fadd double %tmp, 1.000000e+00
  %tobool = fcmp une double %postadd1, 0.000000e+00
  br i1 %tobool, label %exit, label %loop

exit:
  ret i32 1
}


