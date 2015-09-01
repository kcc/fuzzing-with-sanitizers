



define float @f1() {




  %val = call float asm "blah $0 $1", "=&f,f" (float 0.0)
  ret float %val
}

define double @f2() {




  %val = call double asm "blah $0 $1", "=&f,f" (double 0.0)
  ret double %val
}

define double @f3() {




  %val = call double asm "blah $0 $1", "=&f,f" (fp128 0xL00000000000000000000000000000000)
  ret double %val
}
