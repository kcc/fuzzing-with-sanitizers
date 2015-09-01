


%0 = type { x86_fp80, x86_fp80 }



define %0 @test() {
  %A = fpext double 1.0 to x86_fp80
  %B = fpext double 0.0 to x86_fp80
  %mrv = insertvalue %0 undef, x86_fp80 %A, 0
  %mrv1 = insertvalue %0 %mrv, x86_fp80 %B, 1
  ret %0 %mrv1
}






define %0 @test2() {
  %A = fpext double 1.0 to x86_fp80
  %mrv = insertvalue %0 undef, x86_fp80 %A, 0
  %mrv1 = insertvalue %0 %mrv, x86_fp80 %A, 1
  ret %0 %mrv1
}


define void @call1(x86_fp80 *%P1, x86_fp80 *%P2) {
  %a = call %0 @test()
  %b = extractvalue %0 %a, 0
  store x86_fp80 %b, x86_fp80* %P1

  %c = extractvalue %0 %a, 1
  store x86_fp80 %c, x86_fp80* %P2
  ret void 
}


define void @call2(x86_fp80 *%P1, x86_fp80 *%P2) {
  %a = call %0 @test()
  %b = extractvalue %0 %a, 1
  store x86_fp80 %b, x86_fp80* %P1

  %c = extractvalue %0 %a, 0
  store x86_fp80 %c, x86_fp80* %P2
  ret void
}


define void @call3(x86_fp80 *%P1, x86_fp80 *%P2) {
  %a = call %0 @test()
  %b = extractvalue %0 %a, 0
  store x86_fp80 %b, x86_fp80* %P1
  ret void 
}


define void @call4(x86_fp80 *%P1, x86_fp80 *%P2) {
  %a = call %0 @test()

  %c = extractvalue %0 %a, 1
  store x86_fp80 %c, x86_fp80* %P2
  ret void 
}

