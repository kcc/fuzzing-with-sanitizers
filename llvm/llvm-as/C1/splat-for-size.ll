






define <2 x double> @splat_v2f64(<2 x double> %x) #0 {
  %add = fadd <2 x double> %x, <double 1.0, double 1.0>
  ret <2 x double> %add




}

define <4 x double> @splat_v4f64(<4 x double> %x) #1 {
  %add = fadd <4 x double> %x, <double 1.0, double 1.0, double 1.0, double 1.0>
  ret <4 x double> %add




}

define <4 x float> @splat_v4f32(<4 x float> %x) #0 {
  %add = fadd <4 x float> %x, <float 1.0, float 1.0, float 1.0, float 1.0>
  ret <4 x float> %add




}

define <8 x float> @splat_v8f32(<8 x float> %x) #1 {
  %add = fadd <8 x float> %x, <float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0>
  ret <8 x float> %add




}



define <2 x i64> @splat_v2i64(<2 x i64> %x) #1 {
  %add = add <2 x i64> %x, <i64 1, i64 1>
  ret <2 x i64> %add




}



define <4 x i64> @splat_v4i64(<4 x i64> %x) #0 {
  %add = add <4 x i64> %x, <i64 1, i64 1, i64 1, i64 1>
  ret <4 x i64> %add







}


define <4 x i32> @splat_v4i32(<4 x i32> %x) #1 {
  %add = add <4 x i32> %x, <i32 1, i32 1, i32 1, i32 1>
  ret <4 x i32> %add





}


define <8 x i32> @splat_v8i32(<8 x i32> %x) #0 {
  %add = add <8 x i32> %x, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  ret <8 x i32> %add







}


define <8 x i16> @splat_v8i16(<8 x i16> %x) #1 {
  %add = add <8 x i16> %x, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  ret <8 x i16> %add





}


define <16 x i16> @splat_v16i16(<16 x i16> %x) #0 {
  %add = add <16 x i16> %x, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>
  ret <16 x i16> %add







}


define <16 x i8> @splat_v16i8(<16 x i8> %x) #1 {
  %add = add <16 x i8> %x, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <16 x i8> %add





}


define <32 x i8> @splat_v32i8(<32 x i8> %x) #0 {
  %add = add <32 x i8> %x, <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  ret <32 x i8> %add







}





@A = common global <3 x i64> zeroinitializer, align 32

define <8 x i64> @pr23259() #1 {
entry:
  %0 = load <4 x i64>, <4 x i64>* bitcast (<3 x i64>* @A to <4 x i64>*), align 32
  %1 = shufflevector <4 x i64> %0, <4 x i64> undef, <3 x i32> <i32 undef, i32 undef, i32 2>
  %shuffle = shufflevector <3 x i64> <i64 1, i64 undef, i64 undef>, <3 x i64> %1, <8 x i32> <i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  ret <8 x i64> %shuffle
}

attributes #0 = { optsize }
attributes #1 = { minsize }
