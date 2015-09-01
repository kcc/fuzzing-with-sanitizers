







@G = external global i32

define void @bv_crash_test() {
  %I = insertelement <4 x i64> zeroinitializer, i64 15910, i32 0
  %Tr = trunc <4 x i64> %I to <4 x i8>
  %Bc = bitcast <4 x i8> %Tr to i32
  store volatile i32 %Bc, i32* @G
  ret void
}
