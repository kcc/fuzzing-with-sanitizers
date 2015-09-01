







define arm_aapcscc void @f2(i8 signext %a) #0 {
entry:
  %a.addr = alloca i8, align 1
  store i8 %a, i8* %a.addr, align 1
  %0 = load i8, i8* %a.addr, align 1
  %conv = sext i8 %0 to i32
  %shr = ashr i32 %conv, 56
  %conv1 = trunc i32 %shr to i8
  call arm_aapcscc void @f1(i8 signext %conv1)
  ret void
}

declare arm_aapcscc void @f1(i8 signext) #1
