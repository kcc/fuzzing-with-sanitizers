


define <2 x float> @t1(float* %A, <2 x float> %B) {








  %tmp2 = load float, float* %A, align 4
  %tmp3 = insertelement <2 x float> %B, float %tmp2, i32 1
  ret <2 x float> %tmp3
}


define void @t2(<4 x i8> *%in, <4 x i8> *%out, i32 %n) {
entry:
  br label %loop
loop:





  %oldcount = phi i32 [0, %entry], [%newcount, %loop]
  %newcount = add i32 %oldcount, 1
  %p1 = getelementptr <4 x i8>, <4 x i8> *%in, i32 %newcount
  %p2 = getelementptr <4 x i8>, <4 x i8> *%out, i32 %newcount
  %tmp1 = load <4 x i8> , <4 x i8> *%p1, align 4
  store <4 x i8> %tmp1, <4 x i8> *%p2
  %cmp = icmp eq i32 %newcount, %n
  br i1 %cmp, label %loop, label %ret
ret:
  ret void
}
