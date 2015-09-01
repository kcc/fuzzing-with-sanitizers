

define void @bar(<4 x i32>* %p, i32 %lane, <4 x i32> %phitmp) nounwind {




  %val = extractelement <4 x i32> %phitmp, i32 %lane
  %r1 = insertelement <4 x i32> undef, i32 %val, i32 1
  %r2 = insertelement <4 x i32> %r1, i32 %val, i32 2
  %r3 = insertelement <4 x i32> %r2, i32 %val, i32 3
  store <4 x i32> %r3, <4 x i32>* %p, align 4
  ret void
}
