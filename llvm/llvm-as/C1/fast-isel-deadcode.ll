




define i32 @main(i32 %argc, i8** %argv) nounwind {
entry:

  call void @printArgsNoRet(i32 1, float 0x4000CCCCC0000000, i8 signext 99, double 4.100000e+00)








  ret i32 0
}

declare void @printArgsNoRet(i32 %a1, float %a2, i8 signext %a3, double %a4)
