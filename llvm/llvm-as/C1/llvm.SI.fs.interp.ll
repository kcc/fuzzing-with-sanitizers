










define void @main(<16 x i8> addrspace(2)* inreg, <16 x i8> addrspace(2)* inreg, <32 x i8> addrspace(2)* inreg, i32 inreg, <2 x i32>) #0 {
main_body:
  %5 = call float @llvm.SI.fs.constant(i32 0, i32 0, i32 %3)
  %6 = call float @llvm.SI.fs.interp(i32 0, i32 0, i32 %3, <2 x i32> %4)
  %7 = call float @llvm.SI.fs.interp(i32 1, i32 0, i32 %3, <2 x i32> %4)
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %5, float %6, float %7, float %7)
  ret void
}







define void @v_interp_p1_bank16_bug([6 x <16 x i8>] addrspace(2)* byval, [17 x <16 x i8>] addrspace(2)* byval, [17 x <4 x i32>] addrspace(2)* byval, [34 x <8 x i32>] addrspace(2)* byval, float inreg, i32 inreg, <2 x i32>, <2 x i32>, <2 x i32>, <3 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, float, float, float, float, float, float, i32, float, float) #0 {
main_body:
  %22 = call float @llvm.SI.fs.interp(i32 0, i32 0, i32 %5, <2 x i32> %7)
  %23 = call float @llvm.SI.fs.interp(i32 1, i32 0, i32 %5, <2 x i32> %7)
  %24 = call float @llvm.SI.fs.interp(i32 2, i32 0, i32 %5, <2 x i32> %7)
  %25 = call float @fabs(float %22)
  %26 = call float @fabs(float %23)
  %27 = call float @fabs(float %24)
  %28 = call i32 @llvm.SI.packf16(float %25, float %26)
  %29 = bitcast i32 %28 to float
  %30 = call i32 @llvm.SI.packf16(float %27, float 1.000000e+00)
  %31 = bitcast i32 %30 to float
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %29, float %31, float %29, float %31)
  ret void
}


declare float @fabs(float) #2


declare i32 @llvm.SI.packf16(float, float) #1


declare float @llvm.SI.fs.constant(i32, i32, i32) #1


declare float @llvm.SI.fs.interp(i32, i32, i32, <2 x i32>) #1

declare void @llvm.SI.export(i32, i32, i32, i32, i32, float, float, float, float)

attributes #0 = { "ShaderType"="0" }
attributes #1 = { nounwind readnone }
attributes #2 = { readnone }
