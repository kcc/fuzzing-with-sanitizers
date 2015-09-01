



@base  = external global i64 
@sp    = external global i64 
@hp    = external global i64 
@r1    = external global i64 
@r2    = external global i64 
@r3    = external global i64 
@r4    = external global i64 
@r5    = external global i64 
@r6    = external global i64 
@splim = external global i64 

@f1 = external global float  
@f2 = external global float  
@f3 = external global float  
@f4 = external global float  
@d1 = external global double 
@d2 = external global double 

define void @zap(i64 %a, i64 %b) nounwind {
entry:
  
  
  
  %0 = call ghccc i64 @addtwo(i64 %a, i64 %b)
  
  call void @foo() nounwind
  ret void
}

define ghccc i64 @addtwo(i64 %x, i64 %y) nounwind {
entry:
  
  %0 = add i64 %x, %y
  
  ret i64 %0
}

define ghccc void @foo() nounwind {
entry:
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  %0 = load double, double* @d2
  %1 = load double, double* @d1
  %2 = load float, float* @f4
  %3 = load float, float* @f3
  %4 = load float, float* @f2
  %5 = load float, float* @f1
  %6 = load i64, i64* @splim
  %7 = load i64, i64* @r6
  %8 = load i64, i64* @r5
  %9 = load i64, i64* @r4
  %10 = load i64, i64* @r3
  %11 = load i64, i64* @r2
  %12 = load i64, i64* @r1
  %13 = load i64, i64* @hp
  %14 = load i64, i64* @sp
  %15 = load i64, i64* @base
  
  tail call ghccc void @bar( i64 %15, i64 %14, i64 %13, i64 %12, i64 %11,
                             i64 %10, i64 %9, i64 %8, i64 %7, i64 %6,
                             float %5, float %4, float %3, float %2, double %1,
                             double %0 ) nounwind
  ret void
}

declare ghccc void @bar(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64,
                        float, float, float, float, double, double)
