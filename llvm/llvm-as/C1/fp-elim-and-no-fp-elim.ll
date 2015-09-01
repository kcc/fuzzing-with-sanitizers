

define void @bar(i32 %argc) #0 {


entry:
  %conv = sitofp i32 %argc to double
  %mul = fmul double %conv, 3.792700e+01
  %conv1 = fptrunc double %mul to float
  %div = fdiv double 9.273700e+02, %conv
  %conv3 = fptrunc double %div to float
  tail call void @foo(float %conv1, float %conv3)
  ret void
}

define void @qux(i32 %argc) #1 {


entry:
  %conv = sitofp i32 %argc to double
  %mul = fmul double %conv, 3.792700e+01
  %conv1 = fptrunc double %mul to float
  %div = fdiv double 9.273700e+02, %conv
  %conv3 = fptrunc double %div to float
  tail call void @foo(float %conv1, float %conv3)
  ret void
}

declare void @foo(float, float)

attributes #0 = { "no-frame-pointer-elim"="true" }
attributes #1 = { "no-frame-pointer-elim"="false" }
