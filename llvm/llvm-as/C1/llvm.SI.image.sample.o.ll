





define void @sample() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_cl() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.cl.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_d() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.d.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_d_cl() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.d.cl.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_l() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.l.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_b() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.b.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_b_cl() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.b.cl.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_lz() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.lz.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_cd() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.cd.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_cd_cl() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.cd.cl.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_c() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.c.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_c_cl() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.c.cl.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_c_d() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.c.d.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_c_d_cl() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.c.d.cl.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_c_l() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.c.l.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_c_b() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.c.b.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_c_b_cl() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.c.b.cl.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_c_lz() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.c.lz.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_c_cd() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.c.cd.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}




define void @sample_c_cd_cl() #0 {
main_body:
  %r = call <4 x float> @llvm.SI.image.sample.c.cd.cl.o.v4i32(<4 x i32> undef, <8 x i32> undef, <4 x i32> undef, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  %r0 = extractelement <4 x float> %r, i32 0
  %r1 = extractelement <4 x float> %r, i32 1
  %r2 = extractelement <4 x float> %r, i32 2
  %r3 = extractelement <4 x float> %r, i32 3
  call void @llvm.SI.export(i32 15, i32 1, i32 1, i32 0, i32 1, float %r0, float %r1, float %r2, float %r3)
  ret void
}


declare <4 x float> @llvm.SI.image.sample.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.cl.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.d.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.d.cl.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.l.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.b.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.b.cl.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.lz.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.cd.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.cd.cl.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare <4 x float> @llvm.SI.image.sample.c.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.c.cl.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.c.d.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.c.d.cl.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.c.l.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.c.b.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.c.b.cl.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.c.lz.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.c.cd.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1
declare <4 x float> @llvm.SI.image.sample.c.cd.cl.o.v4i32(<4 x i32>, <8 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare void @llvm.SI.export(i32, i32, i32, i32, i32, float, float, float, float)

attributes #0 = { "ShaderType"="0" }
attributes #1 = { nounwind readnone }
