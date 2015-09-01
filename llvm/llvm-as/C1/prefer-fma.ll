




define double @_Z3fooRdS_S_S_(double* dereferenceable(8) %x, double* dereferenceable(8) %y, double* dereferenceable(8) %a) #0 {
entry:
  %0 = load double, double* %y, align 8
  %cmp = fcmp oeq double %0, 0.000000e+00
  %1 = load double, double* %x, align 8
  br i1 %cmp, label %if.then, label %if.else


if.then:                                          



  %2 = load double, double* %a, align 8
  %3 = fmul fast double %1, %2
  %mul = fadd fast double 1.000000e+00, %3
  store double %mul, double* %y, align 8
  br label %if.end


if.else:                                          



  %4 = load double, double* %a, align 8
  %mul1 = fmul fast double %1, %4
  %sub1 = fsub fast double %mul1, %0
  store double %sub1, double* %y, align 8
  br label %if.end

if.end:                                           
  %5 = load double, double* %y, align 8
  %cmp2 = fcmp oeq double %5, 2.000000e+00
  %6 = load double, double* %x, align 8
  br i1 %cmp2, label %if.then2, label %if.else2


if.then2:                                         



  %7 = load double, double* %a, align 8
  %8 = fmul fast double %6, 3.0000000e+00
  %mul2 = fsub fast double %7, %8
  store double %mul2, double* %y, align 8
  br label %if.end2


if.else2:                                         




  %mul3 = fmul fast double %6, 3.0000000e+00
  %neg = fsub fast double 0.0000000e+00, %mul3
  %sub2 = fsub fast double %neg, 3.0000000e+00
  store double %sub2, double* %y, align 8
  br label %if.end2

if.end2:                                           
  %9 = load double, double* %x, align 8
  %10 = load double, double* %y, align 8
  %add = fadd fast double %9, %10
  %11 = load double, double* %a, align 8
  %add2 = fadd fast double %add, %11
  ret double %add2
}

