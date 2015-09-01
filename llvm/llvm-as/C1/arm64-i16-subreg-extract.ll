

define i32 @foo(<4 x i16>* %__a) nounwind {


  %tmp18 = load <4 x i16>, <4 x i16>* %__a, align 8
  %vget_lane = extractelement <4 x i16> %tmp18, i32 0
  %conv = zext i16 %vget_lane to i32
  %mul = mul nsw i32 3, %conv
  ret i32 %mul
}

