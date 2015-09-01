
target datalayout = "E-m:e-p:32:32-i64:64-n32"
target triple = "powerpc-unknown-linux-gnu"




define i8* @nest_receiver(i8* nest %arg) nounwind {





  ret i8* %arg
}

define i8* @nest_caller(i8* %arg) nounwind {





  %result = call i8* @nest_receiver(i8* nest %arg)
  ret i8* %result
}

