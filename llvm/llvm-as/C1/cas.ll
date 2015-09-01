
















define zeroext i1 @cas(float* %p, float* %expected, float %desired) nounwind {
entry:
  %p.addr = alloca float*, align 8
  %expected.addr = alloca float*, align 8
  %desired.addr = alloca float, align 4
  %success = alloca i8, align 1
  store float* %p, float** %p.addr, align 8
  store float* %expected, float** %expected.addr, align 8
  store float %desired, float* %desired.addr, align 4
  %0 = load float*, float** %expected.addr, align 8
  %1 = load float*, float** %expected.addr, align 8
  %2 = load float, float* %1, align 4
  %3 = load float, float* %desired.addr, align 4
  %4 = load float*, float** %p.addr, align 8
  %5 = call i8 asm sideeffect "lock
  store i8 %5, i8* %success, align 1
  %6 = load i8, i8* %success, align 1
  %tobool = trunc i8 %6 to i1
  ret i1 %tobool
}







define zeroext i1 @cas2(i8* %p, i8* %expected, i1 zeroext %desired) nounwind {
entry:
  %p.addr = alloca i8*, align 8
  %expected.addr = alloca i8*, align 8
  %desired.addr = alloca i8, align 1
  %success = alloca i8, align 1
  store i8* %p, i8** %p.addr, align 8
  store i8* %expected, i8** %expected.addr, align 8
  %frombool = zext i1 %desired to i8
  store i8 %frombool, i8* %desired.addr, align 1
  %0 = load i8*, i8** %expected.addr, align 8
  %1 = load i8*, i8** %expected.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = trunc i8 %2 to i1
  %3 = load i8, i8* %desired.addr, align 1
  %tobool1 = trunc i8 %3 to i1
  %4 = load i8*, i8** %p.addr, align 8
  %5 = call i8 asm sideeffect "lock
  store i8 %5, i8* %success, align 1
  %6 = load i8, i8* %success, align 1
  %tobool2 = trunc i8 %6 to i1
  ret i1 %tobool2
}






