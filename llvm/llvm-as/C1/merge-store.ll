

@g0 = external global <3 x float>, align 16
@g1 = external global <3 x float>, align 4





define void @blam() {
  %tmp4 = getelementptr inbounds <3 x float>, <3 x float>* @g1, i64 0, i64 0
  %tmp5 = load <3 x float>, <3 x float>* @g0, align 16
  %tmp6 = extractelement <3 x float> %tmp5, i64 0
  store float %tmp6, float* %tmp4
  %tmp7 = getelementptr inbounds float, float* %tmp4, i64 1
  %tmp8 = load <3 x float>, <3 x float>* @g0, align 16
  %tmp9 = extractelement <3 x float> %tmp8, i64 1
  store float %tmp9, float* %tmp7
  ret void
}
