


define void @func(double %r, double %g, double %b, double* %outH, double* %outS, double* %outL) nounwind uwtable ssp {
bb:
  %tmp = alloca double, align 8
  %tmp1 = alloca double, align 8
  %tmp2 = alloca double, align 8
  store double %r, double* %tmp, align 8
  store double %g, double* %tmp1, align 8
  store double %b, double* %tmp2, align 8
  %tmp3 = fcmp ogt double %r, %g
  br i1 %tmp3, label %bb4, label %bb8

bb4:                                              
  %tmp5 = fcmp ogt double %r, %b
  br i1 %tmp5, label %bb6, label %bb7

bb6:                                              
  br label %bb12

bb7:                                              
  br label %bb12

bb8:                                              
  %tmp9 = fcmp ogt double %g, %b
  br i1 %tmp9, label %bb10, label %bb11

bb10:                                             
  br label %bb12

bb11:                                             
  br label %bb12

bb12:                                             
  %max.0 = phi double* [ %tmp, %bb6 ], [ %tmp2, %bb7 ], [ %tmp1, %bb10 ], [ %tmp2, %bb11 ]



  %tmp13 = load double, double* %tmp, align 8
  %tmp14 = load double, double* %tmp1, align 8
  %tmp15 = fcmp olt double %tmp13, %tmp14
  br i1 %tmp15, label %bb16, label %bb21

bb16:                                             
  %tmp17 = load double, double* %tmp2, align 8
  %tmp18 = fcmp olt double %tmp13, %tmp17
  br i1 %tmp18, label %bb19, label %bb20

bb19:                                             
  br label %bb26

bb20:                                             
  br label %bb26

bb21:                                             
  %tmp22 = load double, double* %tmp2, align 8
  %tmp23 = fcmp olt double %tmp14, %tmp22
  br i1 %tmp23, label %bb24, label %bb25

bb24:                                             
  br label %bb26

bb25:                                             
  br label %bb26

bb26:                                             
  %min.0 = phi double* [ %tmp, %bb19 ], [ %tmp2, %bb20 ], [ %tmp1, %bb24 ], [ %tmp2, %bb25 ]



  %tmp27 = load double, double* %min.0, align 8
  %tmp28 = load double, double* %max.0
  %tmp29 = fadd double %tmp27, %tmp28
  %tmp30 = fdiv double %tmp29, 2.000000e+00
  store double %tmp30, double* %outL
  %tmp31 = load double, double* %min.0
  %tmp32 = load double, double* %max.0
  %tmp33 = fcmp oeq double %tmp31, %tmp32
  br i1 %tmp33, label %bb34, label %bb35

bb34:                                             
  store double 0.000000e+00, double* %outS
  store double 0.000000e+00, double* %outH
  br label %bb81

bb35:                                             
  %tmp36 = fcmp olt double %tmp30, 5.000000e-01
  %tmp37 = fsub double %tmp32, %tmp31
  br i1 %tmp36, label %bb38, label %bb41

bb38:                                             
  %tmp39 = fadd double %tmp32, %tmp31
  %tmp40 = fdiv double %tmp37, %tmp39
  store double %tmp40, double* %outS
  br label %bb45

bb41:                                             
  %tmp42 = fsub double 2.000000e+00, %tmp32
  %tmp43 = fsub double %tmp42, %tmp31
  %tmp44 = fdiv double %tmp37, %tmp43
  store double %tmp44, double* %outS
  br label %bb45

bb45:                                             
  %tmp46 = icmp eq double* %max.0, %tmp
  br i1 %tmp46, label %bb47, label %bb55

bb47:                                             
  %tmp48 = load double, double* %tmp1, align 8
  %tmp49 = load double, double* %tmp2, align 8
  %tmp50 = fsub double %tmp48, %tmp49
  %tmp51 = load double, double* %max.0
  %tmp52 = load double, double* %min.0
  %tmp53 = fsub double %tmp51, %tmp52
  %tmp54 = fdiv double %tmp50, %tmp53
  store double %tmp54, double* %outH
  br label %bb75

bb55:                                             
  %tmp56 = icmp eq double* %max.0, %tmp1
  br i1 %tmp56, label %bb57, label %bb66

bb57:                                             
  %tmp58 = load double, double* %tmp2, align 8
  %tmp59 = load double, double* %tmp, align 8
  %tmp60 = fsub double %tmp58, %tmp59
  %tmp61 = load double, double* %max.0
  %tmp62 = load double, double* %min.0
  %tmp63 = fsub double %tmp61, %tmp62
  %tmp64 = fdiv double %tmp60, %tmp63
  %tmp65 = fadd double 2.000000e+00, %tmp64
  store double %tmp65, double* %outH
  br label %bb75

bb66:                                             
  %tmp67 = load double, double* %tmp, align 8
  %tmp68 = load double, double* %tmp1, align 8
  %tmp69 = fsub double %tmp67, %tmp68
  %tmp70 = load double, double* %max.0
  %tmp71 = load double, double* %min.0
  %tmp72 = fsub double %tmp70, %tmp71
  %tmp73 = fdiv double %tmp69, %tmp72
  %tmp74 = fadd double 4.000000e+00, %tmp73
  store double %tmp74, double* %outH
  br label %bb75

bb75:                                             
  %tmp76 = load double, double* %outH
  %tmp77 = fdiv double %tmp76, 6.000000e+00
  store double %tmp77, double* %outH
  %tmp78 = fcmp olt double %tmp77, 0.000000e+00
  br i1 %tmp78, label %bb79, label %bb81

bb79:                                             
  %tmp80 = fadd double %tmp77, 1.000000e+00
  store double %tmp80, double* %outH
  br label %bb81

bb81:                                             
  ret void
}
