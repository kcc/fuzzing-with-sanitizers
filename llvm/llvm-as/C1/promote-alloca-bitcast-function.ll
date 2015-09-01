




declare void @foo(float*) #0
declare void @foo.varargs(...) #0


define void @crash_call_constexpr_cast() #0 {
  %alloca = alloca i32
  call void bitcast (void (float*)* @foo to void (i32*)*)(i32* %alloca) #0
  ret void
}

define void @crash_call_constexpr_cast_varargs() #0 {
  %alloca = alloca i32
  call void bitcast (void (...)* @foo.varargs to void (i32*)*)(i32* %alloca) #0
  ret void
}

attributes #0 = { nounwind }
