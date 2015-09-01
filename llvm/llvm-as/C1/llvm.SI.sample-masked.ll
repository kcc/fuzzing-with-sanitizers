




define void @v1(i32 %a1) #0 {
entry:
  %0 = insertelement <1 x i32> undef, i32 %a1, i32 0
  %1 = call <4 x float> @llvm.SI.sample.v1i32(<1 x i32> %0, <32 x i8> undef, <16 x i8> undef, i32 0)
  %2 = extractelement <4 x float> %1, i32 0
  %3 = extractelement <4 x float> %1, i32 2
  %4 = extractelement <4 x float> %1, i32 3
  call void @llvm.SI.export(i32 15, i32 0, i32 1, i32 12, i32 0, float %2, float %3, float %4, float %4)
  ret void
}



define void @v2(i32 %a1) #0 {
entry:
  %0 = insertelement <1 x i32> undef, i32 %a1, i32 0
  %1 = call <4 x float> @llvm.SI.sample.v1i32(<1 x i32> %0, <32 x i8> undef, <16 x i8> undef, i32 0)
  %2 = extractelement <4 x float> %1, i32 0
  %3 = extractelement <4 x float> %1, i32 1
  %4 = extractelement <4 x float> %1, i32 3
  call void @llvm.SI.export(i32 15, i32 0, i32 1, i32 12, i32 0, float %2, float %3, float %4, float %4)
  ret void
}



define void @v3(i32 %a1) #0 {
entry:
  %0 = insertelement <1 x i32> undef, i32 %a1, i32 0
  %1 = call <4 x float> @llvm.SI.sample.v1i32(<1 x i32> %0, <32 x i8> undef, <16 x i8> undef, i32 0)
  %2 = extractelement <4 x float> %1, i32 1
  %3 = extractelement <4 x float> %1, i32 2
  %4 = extractelement <4 x float> %1, i32 3
  call void @llvm.SI.export(i32 15, i32 0, i32 1, i32 12, i32 0, float %2, float %3, float %4, float %4)
  ret void
}



define void @v4(i32 %a1) #0 {
entry:
  %0 = insertelement <1 x i32> undef, i32 %a1, i32 0
  %1 = call <4 x float> @llvm.SI.sample.v1i32(<1 x i32> %0, <32 x i8> undef, <16 x i8> undef, i32 0)
  %2 = extractelement <4 x float> %1, i32 0
  %3 = extractelement <4 x float> %1, i32 1
  %4 = extractelement <4 x float> %1, i32 2
  call void @llvm.SI.export(i32 15, i32 0, i32 1, i32 12, i32 0, float %2, float %3, float %4, float %4)
  ret void
}



define void @v5(i32 %a1) #0 {
entry:
  %0 = insertelement <1 x i32> undef, i32 %a1, i32 0
  %1 = call <4 x float> @llvm.SI.sample.v1i32(<1 x i32> %0, <32 x i8> undef, <16 x i8> undef, i32 0)
  %2 = extractelement <4 x float> %1, i32 1
  %3 = extractelement <4 x float> %1, i32 3
  call void @llvm.SI.export(i32 15, i32 0, i32 1, i32 12, i32 0, float %2, float %3, float %3, float %3)
  ret void
}



define void @v6(i32 %a1) #0 {
entry:
  %0 = insertelement <1 x i32> undef, i32 %a1, i32 0
  %1 = call <4 x float> @llvm.SI.sample.v1i32(<1 x i32> %0, <32 x i8> undef, <16 x i8> undef, i32 0)
  %2 = extractelement <4 x float> %1, i32 1
  %3 = extractelement <4 x float> %1, i32 2
  call void @llvm.SI.export(i32 15, i32 0, i32 1, i32 12, i32 0, float %2, float %3, float %3, float %3)
  ret void
}



define void @v7(i32 %a1) #0 {
entry:
  %0 = insertelement <1 x i32> undef, i32 %a1, i32 0
  %1 = call <4 x float> @llvm.SI.sample.v1i32(<1 x i32> %0, <32 x i8> undef, <16 x i8> undef, i32 0)
  %2 = extractelement <4 x float> %1, i32 0
  %3 = extractelement <4 x float> %1, i32 3
  call void @llvm.SI.export(i32 15, i32 0, i32 1, i32 12, i32 0, float %2, float %3, float %3, float %3)
  ret void
}

declare <4 x float> @llvm.SI.sample.v1i32(<1 x i32>, <32 x i8>, <16 x i8>, i32) readnone

declare void @llvm.SI.export(i32, i32, i32, i32, i32, float, float, float, float)

attributes #0 = { "ShaderType"="0" }
