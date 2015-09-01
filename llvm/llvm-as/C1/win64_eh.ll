




define void @foo0() uwtable {
entry:
  ret void
}







define void @foo1() uwtable {
entry:
  %baz = alloca [2000 x i16], align 2
  ret void
}











define void @foo2() uwtable {
entry:
  %baz = alloca [4000 x i16], align 2
  ret void
}













define i32 @foo3(i32 %f_arg, i32 %e_arg, i32 %d_arg, i32 %c_arg, i32 %b_arg, i32 %a_arg) uwtable {
entry:
  %a = alloca i32
  %b = alloca i32
  %c = alloca i32
  %d = alloca i32
  %e = alloca i32
  %f = alloca i32
  store i32 %a_arg, i32* %a
  store i32 %b_arg, i32* %b
  store i32 %c_arg, i32* %c
  store i32 %d_arg, i32* %d
  store i32 %e_arg, i32* %e
  store i32 %f_arg, i32* %f
  %tmp = load i32, i32* %a
  %tmp1 = mul i32 %tmp, 2
  %tmp2 = load i32, i32* %b
  %tmp3 = mul i32 %tmp2, 3
  %tmp4 = add i32 %tmp1, %tmp3
  %tmp5 = load i32, i32* %c
  %tmp6 = mul i32 %tmp5, 5
  %tmp7 = add i32 %tmp4, %tmp6
  %tmp8 = load i32, i32* %d
  %tmp9 = mul i32 %tmp8, 7
  %tmp10 = add i32 %tmp7, %tmp9
  %tmp11 = load i32, i32* %e
  %tmp12 = mul i32 %tmp11, 11
  %tmp13 = add i32 %tmp10, %tmp12
  %tmp14 = load i32, i32* %f
  %tmp15 = mul i32 %tmp14, 13
  %tmp16 = add i32 %tmp13, %tmp15
  ret i32 %tmp16
}















declare i32 @_d_eh_personality(i32, i32, i64, i8*, i8*)
declare void @_d_eh_resume_unwind(i8*)

declare i32 @bar()

define i32 @foo4() #0 personality i32 (i32, i32, i64, i8*, i8*)* @_d_eh_personality {
entry:
  %step = alloca i32, align 4
  store i32 0, i32* %step
  %tmp = load i32, i32* %step

  %tmp1 = invoke i32 @bar()
          to label %finally unwind label %landingpad

finally:
  store i32 1, i32* %step
  br label %endtryfinally

landingpad:
  %landing_pad = landingpad { i8*, i32 }
          cleanup
  %tmp3 = extractvalue { i8*, i32 } %landing_pad, 0
  store i32 2, i32* %step
  call void @_d_eh_resume_unwind(i8* %tmp3)
  unreachable

endtryfinally:
  %tmp10 = load i32, i32* %step
  ret i32 %tmp10
}














define void @foo5() uwtable {
entry:
  %s = alloca i32, align 64
  call void asm sideeffect "", "~{rbx},~{rdi},~{xmm6},~{xmm7}"()
  ret void
}



























