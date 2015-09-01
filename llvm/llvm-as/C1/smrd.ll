







define void @smrd0(i32 addrspace(1)* %out, i32 addrspace(2)* %ptr) {
entry:
  %0 = getelementptr i32, i32 addrspace(2)* %ptr, i64 1
  %1 = load i32, i32 addrspace(2)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @smrd1(i32 addrspace(1)* %out, i32 addrspace(2)* %ptr) {
entry:
  %0 = getelementptr i32, i32 addrspace(2)* %ptr, i64 255
  %1 = load i32, i32 addrspace(2)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}








define void @smrd2(i32 addrspace(1)* %out, i32 addrspace(2)* %ptr) {
entry:
  %0 = getelementptr i32, i32 addrspace(2)* %ptr, i64 256
  %1 = load i32, i32 addrspace(2)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}








define void @smrd3(i32 addrspace(1)* %out, i32 addrspace(2)* %ptr) {
entry:
  %0 = getelementptr i32, i32 addrspace(2)* %ptr, i64 4294967296 
  %1 = load i32, i32 addrspace(2)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}







define void @smrd4(i32 addrspace(1)* %out, i32 addrspace(2)* %ptr) {
entry:
  %0 = getelementptr i32, i32 addrspace(2)* %ptr, i64 262143
  %1 = load i32, i32 addrspace(2)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}







define void @smrd5(i32 addrspace(1)* %out, i32 addrspace(2)* %ptr) {
entry:
  %0 = getelementptr i32, i32 addrspace(2)* %ptr, i64 262144
  %1 = load i32, i32 addrspace(2)* %0
  store i32 %1, i32 addrspace(1)* %out
  ret void
}





define void @smrd_load_const0(<16 x i8> addrspace(2)* inreg, <16 x i8> addrspace(2)* inreg, <32 x i8> addrspace(2)* inreg, i32 inreg, <2 x i32>, <2 x i32>, <2 x i32>, <3 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, float, float, float, float, float, float, float, float, float) #0 {
main_body:
  %20 = getelementptr <16 x i8>, <16 x i8> addrspace(2)* %0, i32 0
  %21 = load <16 x i8>, <16 x i8> addrspace(2)* %20
  %22 = call float @llvm.SI.load.const(<16 x i8> %21, i32 16)
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 0, float %22, float %22, float %22, float %22)
  ret void
}






define void @smrd_load_const1(<16 x i8> addrspace(2)* inreg, <16 x i8> addrspace(2)* inreg, <32 x i8> addrspace(2)* inreg, i32 inreg, <2 x i32>, <2 x i32>, <2 x i32>, <3 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, float, float, float, float, float, float, float, float, float) #0 {
main_body:
  %20 = getelementptr <16 x i8>, <16 x i8> addrspace(2)* %0, i32 0
  %21 = load <16 x i8>, <16 x i8> addrspace(2)* %20
  %22 = call float @llvm.SI.load.const(<16 x i8> %21, i32 1020)
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 0, float %22, float %22, float %22, float %22)
  ret void
}








define void @smrd_load_const2(<16 x i8> addrspace(2)* inreg, <16 x i8> addrspace(2)* inreg, <32 x i8> addrspace(2)* inreg, i32 inreg, <2 x i32>, <2 x i32>, <2 x i32>, <3 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, float, float, float, float, float, float, float, float, float) #0 {
main_body:
  %20 = getelementptr <16 x i8>, <16 x i8> addrspace(2)* %0, i32 0
  %21 = load <16 x i8>, <16 x i8> addrspace(2)* %20
  %22 = call float @llvm.SI.load.const(<16 x i8> %21, i32 1024)
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 0, float %22, float %22, float %22, float %22)
  ret void
}







define void @smrd_load_const3(<16 x i8> addrspace(2)* inreg, <16 x i8> addrspace(2)* inreg, <32 x i8> addrspace(2)* inreg, i32 inreg, <2 x i32>, <2 x i32>, <2 x i32>, <3 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, float, float, float, float, float, float, float, float, float) #0 {
main_body:
  %20 = getelementptr <16 x i8>, <16 x i8> addrspace(2)* %0, i32 0
  %21 = load <16 x i8>, <16 x i8> addrspace(2)* %20
  %22 = call float @llvm.SI.load.const(<16 x i8> %21, i32 1048572)
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 0, float %22, float %22, float %22, float %22)
  ret void
}







define void @smrd_load_const4(<16 x i8> addrspace(2)* inreg, <16 x i8> addrspace(2)* inreg, <32 x i8> addrspace(2)* inreg, i32 inreg, <2 x i32>, <2 x i32>, <2 x i32>, <3 x i32>, <2 x i32>, <2 x i32>, <2 x i32>, float, float, float, float, float, float, float, float, float) #0 {
main_body:
  %20 = getelementptr <16 x i8>, <16 x i8> addrspace(2)* %0, i32 0
  %21 = load <16 x i8>, <16 x i8> addrspace(2)* %20
  %22 = call float @llvm.SI.load.const(<16 x i8> %21, i32 1048576)
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 0, float %22, float %22, float %22, float %22)
  ret void
}


declare float @llvm.SI.load.const(<16 x i8>, i32) #1

declare void @llvm.SI.export(i32, i32, i32, i32, i32, float, float, float, float)

attributes #0 = { "ShaderType"="0" }
attributes #1 = { nounwind readnone }
