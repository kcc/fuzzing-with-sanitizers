



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
@d3 = external global double 
@d4 = external global double 

define ghccc i64 @addtwo(i64 %x, i64 %y) nounwind {
entry:
  
  
  
  %0 = add i64 %x, %y
  ret i64 %0
}

define void @zap(i64 %a, i64 %b) nounwind {
entry:
  
  
  
  
  %0 = call ghccc i64 @addtwo(i64 %a, i64 %b)
  call void @foo() nounwind
  ret void
}

define ghccc void @foo_i64 () nounwind {
entry:
  
  
  
  
  

  %0 = load i64, i64* @base
  tail call ghccc void @bar_i64( i64 %0 ) nounwind
  ret void
}

define ghccc void @foo_float () nounwind {
entry:
  
  
  
  
  

  %0 = load float, float* @f1
  tail call ghccc void @bar_float( float %0 ) nounwind
  ret void
}

define ghccc void @foo_double () nounwind {
entry:
  
  
  
  
  

  %0 = load double, double* @d1
  tail call ghccc void @bar_double( double %0 ) nounwind
  ret void
}

declare ghccc void @foo ()

declare ghccc void @bar_i64 (i64)
declare ghccc void @bar_float (float)
declare ghccc void @bar_double (double)
