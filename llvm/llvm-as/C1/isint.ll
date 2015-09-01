





define i32 @isint_return(double %d) nounwind {



  %i = fptosi double %d to i32

  %e = sitofp i32 %i to double

  %c = fcmp oeq double %d, %e




  %z = zext i1 %c to i32
  ret i32 %z
}

define i32 @isint_float_return(float %f) nounwind {



  %i = fptosi float %f to i32

  %g = sitofp i32 %i to float

  %c = fcmp oeq float %f, %g



  %z = zext i1 %c to i32
  ret i32 %z
}

declare void @foo()

define void @isint_branch(double %d) nounwind {


  %i = fptosi double %d to i32

  %e = sitofp i32 %i to double

  %c = fcmp oeq double %d, %e


  br i1 %c, label %true, label %false
true:
  call void @foo()
  ret void
false:
  ret void
}
