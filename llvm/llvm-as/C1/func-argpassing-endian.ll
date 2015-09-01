


@var32 = global i32 0
@vardouble = global double 0.0

define void @arg_longint( i64 %val ) {



   %tmp = trunc i64 %val to i32 
   store i32 %tmp, i32* @var32
   ret void
}

define void @arg_double( double %val ) {


    store double  %val, double* @vardouble
    ret void
}

define void @arg_v4i32(<4 x i32> %vec ) {






    %tmp = extractelement <4 x i32> %vec, i32 0
    store i32 %tmp, i32* @var32
    ret void
}

define void @arg_v2f64(<2 x double> %vec ) {


    %tmp = extractelement <2 x double> %vec, i32 0
    store double %tmp, double* @vardouble
    ret void
}

define i64 @return_longint() {





    ret i64 42
}

define double @return_double() {



    ret double 1.0
}

define <4 x i32> @return_v4i32() {





   ret < 4 x i32> < i32 42, i32 43, i32 44, i32 45 >
}

define <2 x double> @return_v2f64() {





   ret <2 x double> < double 3.14, double 6.28 >
}

define void @caller_arg_longint() {





   call void @arg_longint( i64 42 )
   ret void
}

define void @caller_arg_double() {



   call void @arg_double( double 1.0 )
   ret void
}

define void @caller_return_longint() {



   %val = call i64 @return_longint()
   %tmp = trunc i64 %val to i32 
   store i32 %tmp, i32* @var32
   ret void
}

define void @caller_return_double() {



  %val = call double @return_double( )
  %tmp = fadd double %val, 3.14
  store double  %tmp, double* @vardouble
  ret void
}

define void @caller_return_v2f64() {


   %val = call <2 x double> @return_v2f64( )
   %tmp = extractelement <2 x double> %val, i32 0
    store double %tmp, double* @vardouble
    ret void
}
