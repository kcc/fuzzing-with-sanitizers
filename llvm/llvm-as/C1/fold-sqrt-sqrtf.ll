




define float @foo(float %f) uwtable ssp {
entry:



  %conv = fpext float %f to double
  %call = tail call double @sqrt(double %conv)
  %conv1 = fptrunc double %call to float
  ret float %conv1
}

declare double @sqrt(double)
