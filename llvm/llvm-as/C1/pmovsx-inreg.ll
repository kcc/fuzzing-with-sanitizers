






define void @test1(<2 x i8>* %in, <2 x i64>* %out) nounwind {
  %wide.load35 = load <2 x i8>, <2 x i8>* %in, align 1
  %sext = sext <2 x i8> %wide.load35 to <2 x i64>
  store <2 x i64> zeroinitializer, <2 x i64>* undef, align 8
  store <2 x i64> %sext, <2 x i64>* %out, align 8
  ret void









}

define void @test2(<4 x i8>* %in, <4 x i64>* %out) nounwind {
  %wide.load35 = load <4 x i8>, <4 x i8>* %in, align 1
  %sext = sext <4 x i8> %wide.load35 to <4 x i64>
  store <4 x i64> zeroinitializer, <4 x i64>* undef, align 8
  store <4 x i64> %sext, <4 x i64>* %out, align 8
  ret void



}

define void @test3(<4 x i8>* %in, <4 x i32>* %out) nounwind {
  %wide.load35 = load <4 x i8>, <4 x i8>* %in, align 1
  %sext = sext <4 x i8> %wide.load35 to <4 x i32>
  store <4 x i32> zeroinitializer, <4 x i32>* undef, align 8
  store <4 x i32> %sext, <4 x i32>* %out, align 8
  ret void









}

define void @test4(<8 x i8>* %in, <8 x i32>* %out) nounwind {
  %wide.load35 = load <8 x i8>, <8 x i8>* %in, align 1
  %sext = sext <8 x i8> %wide.load35 to <8 x i32>
  store <8 x i32> zeroinitializer, <8 x i32>* undef, align 8
  store <8 x i32> %sext, <8 x i32>* %out, align 8
  ret void



}

define void @test5(<8 x i8>* %in, <8 x i16>* %out) nounwind {
  %wide.load35 = load <8 x i8>, <8 x i8>* %in, align 1
  %sext = sext <8 x i8> %wide.load35 to <8 x i16>
  store <8 x i16> zeroinitializer, <8 x i16>* undef, align 8
  store <8 x i16> %sext, <8 x i16>* %out, align 8
  ret void









}

define void @test6(<16 x i8>* %in, <16 x i16>* %out) nounwind {
  %wide.load35 = load <16 x i8>, <16 x i8>* %in, align 1
  %sext = sext <16 x i8> %wide.load35 to <16 x i16>
  store <16 x i16> zeroinitializer, <16 x i16>* undef, align 8
  store <16 x i16> %sext, <16 x i16>* %out, align 8
  ret void



}

define void @test7(<2 x i16>* %in, <2 x i64>* %out) nounwind {
  %wide.load35 = load <2 x i16>, <2 x i16>* %in, align 1
  %sext = sext <2 x i16> %wide.load35 to <2 x i64>
  store <2 x i64> zeroinitializer, <2 x i64>* undef, align 8
  store <2 x i64> %sext, <2 x i64>* %out, align 8
  ret void










}

define void @test8(<4 x i16>* %in, <4 x i64>* %out) nounwind {
  %wide.load35 = load <4 x i16>, <4 x i16>* %in, align 1
  %sext = sext <4 x i16> %wide.load35 to <4 x i64>
  store <4 x i64> zeroinitializer, <4 x i64>* undef, align 8
  store <4 x i64> %sext, <4 x i64>* %out, align 8
  ret void



}

define void @test9(<4 x i16>* %in, <4 x i32>* %out) nounwind {
  %wide.load35 = load <4 x i16>, <4 x i16>* %in, align 1
  %sext = sext <4 x i16> %wide.load35 to <4 x i32>
  store <4 x i32> zeroinitializer, <4 x i32>* undef, align 8
  store <4 x i32> %sext, <4 x i32>* %out, align 8
  ret void









}

define void @test10(<8 x i16>* %in, <8 x i32>* %out) nounwind {
  %wide.load35 = load <8 x i16>, <8 x i16>* %in, align 1
  %sext = sext <8 x i16> %wide.load35 to <8 x i32>
  store <8 x i32> zeroinitializer, <8 x i32>* undef, align 8
  store <8 x i32> %sext, <8 x i32>* %out, align 8
  ret void



}

define void @test11(<2 x i32>* %in, <2 x i64>* %out) nounwind {
  %wide.load35 = load <2 x i32>, <2 x i32>* %in, align 1
  %sext = sext <2 x i32> %wide.load35 to <2 x i64>
  store <2 x i64> zeroinitializer, <2 x i64>* undef, align 8
  store <2 x i64> %sext, <2 x i64>* %out, align 8
  ret void









}

define void @test12(<4 x i32>* %in, <4 x i64>* %out) nounwind {
  %wide.load35 = load <4 x i32>, <4 x i32>* %in, align 1
  %sext = sext <4 x i32> %wide.load35 to <4 x i64>
  store <4 x i64> zeroinitializer, <4 x i64>* undef, align 8
  store <4 x i64> %sext, <4 x i64>* %out, align 8
  ret void



}
