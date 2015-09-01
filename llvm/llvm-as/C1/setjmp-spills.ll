


declare i32 @get_val()
declare void @use_val(i32)
declare i1 @setjmp()
declare void @longjmp()
declare void @personality()






define void @setjmp_caller() {





  %a1 = call i32 @get_val()
  %a2 = call i32 @get_val()
  %a3 = call i32 @get_val()
  %a4 = call i32 @get_val()
  %a5 = call i32 @get_val()
  %a6 = call i32 @get_val()
  %a7 = call i32 @get_val()
  %a8 = call i32 @get_val()





  %setjmp_result = call i1 @setjmp() returns_twice
  br i1 %setjmp_result, label %second, label %first







first:
  %b1 = call i32 @get_val()
  %b2 = call i32 @get_val()
  %b3 = call i32 @get_val()
  %b4 = call i32 @get_val()
  %b5 = call i32 @get_val()
  %b6 = call i32 @get_val()
  %b7 = call i32 @get_val()
  %b8 = call i32 @get_val()
  call void @use_val(i32 %b1)
  call void @use_val(i32 %b2)
  call void @use_val(i32 %b3)
  call void @use_val(i32 %b4)
  call void @use_val(i32 %b5)
  call void @use_val(i32 %b6)
  call void @use_val(i32 %b7)
  call void @use_val(i32 %b8)
  call void @longjmp()
  unreachable



second:
  call void @use_val(i32 %a1)
  call void @use_val(i32 %a2)
  call void @use_val(i32 %a3)
  call void @use_val(i32 %a4)
  call void @use_val(i32 %a5)
  call void @use_val(i32 %a6)
  call void @use_val(i32 %a7)
  call void @use_val(i32 %a8)
  ret void
}





define void @setjmp_invoker() personality void ()* @personality {


  %a1 = call i32 @get_val()
  %a2 = call i32 @get_val()
  %a3 = call i32 @get_val()
  %a4 = call i32 @get_val()
  %a5 = call i32 @get_val()
  %a6 = call i32 @get_val()
  %a7 = call i32 @get_val()
  %a8 = call i32 @get_val()





  %setjmp_result = invoke i1 @setjmp() returns_twice
      to label %cont unwind label %lpad



cont:
  br i1 %setjmp_result, label %second, label %first

lpad:
  %lp = landingpad { i8*, i32 } cleanup
  unreachable

first:
  %b1 = call i32 @get_val()
  %b2 = call i32 @get_val()
  %b3 = call i32 @get_val()
  %b4 = call i32 @get_val()
  %b5 = call i32 @get_val()
  %b6 = call i32 @get_val()
  %b7 = call i32 @get_val()
  %b8 = call i32 @get_val()
  call void @use_val(i32 %b1)
  call void @use_val(i32 %b2)
  call void @use_val(i32 %b3)
  call void @use_val(i32 %b4)
  call void @use_val(i32 %b5)
  call void @use_val(i32 %b6)
  call void @use_val(i32 %b7)
  call void @use_val(i32 %b8)
  call void @longjmp()
  unreachable



second:
  call void @use_val(i32 %a1)
  call void @use_val(i32 %a2)
  call void @use_val(i32 %a3)
  call void @use_val(i32 %a4)
  call void @use_val(i32 %a5)
  call void @use_val(i32 %a6)
  call void @use_val(i32 %a7)
  call void @use_val(i32 %a8)
  ret void
}
