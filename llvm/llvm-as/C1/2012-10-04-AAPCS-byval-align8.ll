


%struct_t = type { double, double, double }
@static_val = constant %struct_t { double 1.0, double 2.0, double 3.0 }

declare void @llvm.va_start(i8*) nounwind
declare void @llvm.va_end(i8*) nounwind


define void @test_byval_8_bytes_alignment(i32 %i, ...) {
entry:



  %g = alloca i8*
  %g1 = bitcast i8** %g to i8*
  call void @llvm.va_start(i8* %g1)



  %0 = va_arg i8** %g, double
  call void @llvm.va_end(i8* %g1)

  ret void
}







define i32 @main() {
entry:
  call void (i32, ...) @test_byval_8_bytes_alignment(i32 555, %struct_t* byval @static_val)
  ret i32 0
}

declare void @f(double)






define void @test_byval_8_bytes_alignment_fixed_arg(i32 %n1, %struct_t* byval %val) nounwind {
entry:
  %a = getelementptr inbounds %struct_t, %struct_t* %val, i32 0, i32 0
  %0 = load double, double* %a
  call void (double) @f(double %0)
  ret void
}







define i32 @main_fixed_arg() {
entry:
  call void (i32, %struct_t*) @test_byval_8_bytes_alignment_fixed_arg(i32 555, %struct_t* byval @static_val)
  ret i32 0
}
