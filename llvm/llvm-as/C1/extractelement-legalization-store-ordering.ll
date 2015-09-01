

target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"




























define void @test_extractelement_legalization_storereuse(<4 x i32> %a, i32* nocapture %x, i32* nocapture readonly %y, i32 %i) #0 {
entry:
  %0 = bitcast i32* %y to <4 x i32>*
  %1 = load <4 x i32>, <4 x i32>* %0, align 16
  %am = add <4 x i32> %a, %1
  store <4 x i32> %am, <4 x i32>* %0, align 16
  %ip0 = shl nsw i32 %i, 2
  %ip1 = or i32 %ip0, 1
  %ip2 = or i32 %ip0, 2
  %ip3 = or i32 %ip0, 3
  %vecext = extractelement <4 x i32> %am, i32 %ip0
  %arrayidx = getelementptr inbounds i32, i32* %x, i32 %ip3
  store i32 %vecext, i32* %arrayidx, align 4
  %vecext5 = extractelement <4 x i32> %am, i32 %ip1
  %arrayidx8 = getelementptr inbounds i32, i32* %x, i32 %ip0
  store i32 %vecext5, i32* %arrayidx8, align 4
  %vecext11 = extractelement <4 x i32> %am, i32 %ip2
  %arrayidx14 = getelementptr inbounds i32, i32* %x, i32 %ip2
  store i32 %vecext11, i32* %arrayidx14, align 4
  %vecext17 = extractelement <4 x i32> %am, i32 %ip3
  %arrayidx20 = getelementptr inbounds i32, i32* %x, i32 %ip1
  store i32 %vecext17, i32* %arrayidx20, align 4
  ret void
}

attributes #0 = { nounwind }
