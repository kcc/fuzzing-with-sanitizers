








define void @wideloads(<8 x float>* %a, <8 x float>* %b, <8 x float>* %c) nounwind uwtable noinline ssp {
  %v0 = load <8 x float>, <8 x float>* %a, align 16  
  %v1 = load <8 x float>, <8 x float>* %b, align 32  
  %m0 = fcmp olt <8 x float> %v1, %v0
  %v2 = load <8 x float>, <8 x float>* %c, align 32  
  %m1 = fcmp olt <8 x float> %v2, %v0
  %mand = and <8 x i1> %m1, %m0
  %r = zext <8 x i1> %mand to <8 x i32>
  store <8 x i32> %r, <8 x i32>* undef, align 32
  ret void
}











define void @widestores(<8 x float>* %a, <8 x float>* %b, <8 x float>* %c) nounwind uwtable noinline ssp {
  %v0 = load <8 x float>, <8 x float>* %a, align 32
  %v1 = load <8 x float>, <8 x float>* %b, align 32
  store <8 x float> %v0, <8 x float>* %b, align 32 
  store <8 x float> %v1, <8 x float>* %a, align 16 
  ret void
}

