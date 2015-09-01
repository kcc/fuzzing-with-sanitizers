



target triple = "thumbv7-apple-darwin"

declare double @exp(double)


define void @remat_subreg(float* nocapture %x, i32* %y, i32 %n, i32 %z, float %c, float %lambda, float* nocapture %ret_f, float* nocapture %ret_df) nounwind {
entry:
  %conv16 = fpext float %lambda to double
  %mul17 = fmul double %conv16, -1.000000e+00
  br i1 undef, label %cond.end.us, label %cond.end

cond.end.us:                                      
  unreachable

cond.end:                                         
  %mul = fmul double undef, 0.000000e+00
  %add = fadd double undef, %mul
  %add46 = fadd double undef, undef
  %add75 = fadd double 0.000000e+00, undef
  br i1 undef, label %for.end, label %cond.end

for.end:                                          
  %conv78 = sitofp i32 %z to double
  %conv83 = fpext float %c to double
  %mul84 = fmul double %mul17, %conv83
  %call85 = tail call double @exp(double %mul84) nounwind
  %mul86 = fmul double %conv78, %call85
  %add88 = fadd double 0.000000e+00, %mul86

  %call100 = tail call double @exp(double %mul84) nounwind
  %mul101 = fmul double undef, %call100
  %add103 = fadd double %add46, %mul101
  %mul111 = fmul double undef, %conv83
  %mul119 = fmul double %mul111, undef
  %add121 = fadd double undef, %mul119
  %div = fdiv double 1.000000e+00, %conv16
  %div126 = fdiv double %add, %add75
  %sub = fsub double %div, %div126
  %div129 = fdiv double %add103, %add88
  %add130 = fadd double %sub, %div129
  %conv131 = fptrunc double %add130 to float
  store float %conv131, float* %ret_f, align 4
  %mul139 = fmul double %div129, %div129
  %div142 = fdiv double %add121, %add88
  %sub143 = fsub double %mul139, %div142



  %mul146 = fmul float %lambda, %lambda
  %conv147 = fpext float %mul146 to double
  %div148 = fdiv double 1.000000e+00, %conv147
  %sub149 = fsub double %sub143, %div148
  %conv150 = fptrunc double %sub149 to float
  store float %conv150, float* %ret_df, align 4
  ret void
}





define void @insert_elem() nounwind {
entry:
  br i1 undef, label %if.end251, label %if.then84

if.then84:                                        
  br i1 undef, label %if.end251, label %if.then195

if.then195:                                       
  %div = fdiv float 1.000000e+00, undef
  %vecinit207 = insertelement <4 x float> undef, float %div, i32 1
  %vecinit208 = insertelement <4 x float> %vecinit207, float 1.000000e+00, i32 2
  %vecinit209 = insertelement <4 x float> %vecinit208, float 1.000000e+00, i32 3
  %mul216 = fmul <4 x float> zeroinitializer, %vecinit209
  store <4 x float> %mul216, <4 x float>* undef, align 16
  br label %if.end251

if.end251:                                        
  ret void
}



define void @rdar11950722() nounwind readonly optsize ssp align 2 {
entry:
  br i1 undef, label %land.lhs.true7, label %lor.lhs.false.i

lor.lhs.false.i:
  br i1 undef, label %if.then10.i, label %land.lhs.true7

if.then10.i:
  %xFlags.1.i = select i1 undef, i32 0, i32 undef
  br i1 undef, label %land.lhs.true33.i, label %f.exit

land.lhs.true33.i:
  %and26.i = and i32 %xFlags.1.i, 8
  %cmp27.i = icmp eq i32 %and26.i, 0
  %and29.i = and i32 %xFlags.1.i, 2147483645
  %xFlags.1.and29.i = select i1 %cmp27.i, i32 %xFlags.1.i, i32 %and29.i
  %and34.i = and i32 %xFlags.1.i, 8
  %cmp35.i = icmp eq i32 %and34.i, 0
  %and37.i = and i32 %xFlags.1.i, 2147483645
  %yFlags.1.and37.i = select i1 %cmp35.i, i32 %xFlags.1.i, i32 %and37.i
  br label %f.exit

f.exit:
  %xFlags.3.i = phi i32 [ %xFlags.1.and29.i, %land.lhs.true33.i ], [ %xFlags.1.i, %if.then10.i ]
  %yFlags.2.i = phi i32 [ %yFlags.1.and37.i, %land.lhs.true33.i ], [ %xFlags.1.i, %if.then10.i ]
  %cmp40.i = icmp eq i32 %xFlags.3.i, %yFlags.2.i
  br i1 %cmp40.i, label %land.lhs.true7, label %land.end

land.lhs.true7:
  br i1 undef, label %land.lhs.true34, label %lor.lhs.false27

lor.lhs.false27:
  br i1 undef, label %land.lhs.true34, label %land.end

land.lhs.true34:
  br i1 undef, label %land.end, label %lor.lhs.false44

lor.lhs.false44:
  ret void

land.end:
  ret void
}
