

%struct.float4 = type { float, float, float, float }


define float @inline_func(float %f1, float %f2) #0 {
  %c1 = alloca %struct.float4, align 4
  %c2 = alloca %struct.float4, align 4
  %c3 = alloca %struct.float4, align 4
  call void asm sideeffect "vmul.f32 ${2:q}, ${0:q}, ${1:q}", "=*r,=*r,*w"(%struct.float4* %c1, %struct.float4* %c2, %struct.float4* %c3) #1, !srcloc !1
  %x = getelementptr inbounds %struct.float4, %struct.float4* %c3, i32 0, i32 0
  %1 = load float, float* %x, align 4
  ret float %1
}

!1 = !{i32 271, i32 305}
