

define i64 @dotests_616() {







entry:
  %0 = bitcast <2 x i64> zeroinitializer to <8 x i16>
  %1 = and <8 x i16> zeroinitializer, %0
  %2 = icmp ne <8 x i16> %1, zeroinitializer
  %3 = extractelement <8 x i1> %2, i32 2
  %vgetq_lane285 = sext i1 %3 to i16
  %vset_lane = insertelement <4 x i16> undef, i16 %vgetq_lane285, i32 0
  %4 = bitcast <4 x i16> %vset_lane to <1 x i64>
  %vget_lane = extractelement <1 x i64> %4, i32 0
  ret i64 %vget_lane
}
