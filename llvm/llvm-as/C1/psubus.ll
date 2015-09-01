



target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"

define void @test1(i16* nocapture %head) nounwind {
vector.ph:
  %0 = getelementptr inbounds i16, i16* %head, i64 0
  %1 = bitcast i16* %0 to <8 x i16>*
  %2 = load <8 x i16>, <8 x i16>* %1, align 2
  %3 = icmp slt <8 x i16> %2, zeroinitializer
  %4 = xor <8 x i16> %2, <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>
  %5 = select <8 x i1> %3, <8 x i16> %4, <8 x i16> zeroinitializer
  store <8 x i16> %5, <8 x i16>* %1, align 2
  ret void





















}

define void @test2(i16* nocapture %head) nounwind {
vector.ph:
  %0 = getelementptr inbounds i16, i16* %head, i64 0
  %1 = bitcast i16* %0 to <8 x i16>*
  %2 = load <8 x i16>, <8 x i16>* %1, align 2
  %3 = icmp ugt <8 x i16> %2, <i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766>
  %4 = add <8 x i16> %2, <i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767>
  %5 = select <8 x i1> %3, <8 x i16> %4, <8 x i16> zeroinitializer
  store <8 x i16> %5, <8 x i16>* %1, align 2
  ret void





















}

define void @test3(i16* nocapture %head, i16 zeroext %w) nounwind {
vector.ph:
  %0 = insertelement <8 x i16> undef, i16 %w, i32 0
  %broadcast15 = shufflevector <8 x i16> %0, <8 x i16> undef, <8 x i32> zeroinitializer
  %1 = getelementptr inbounds i16, i16* %head, i64 0
  %2 = bitcast i16* %1 to <8 x i16>*
  %3 = load <8 x i16>, <8 x i16>* %2, align 2
  %4 = icmp ult <8 x i16> %3, %broadcast15
  %5 = sub <8 x i16> %3, %broadcast15
  %6 = select <8 x i1> %4, <8 x i16> zeroinitializer, <8 x i16> %5
  store <8 x i16> %6, <8 x i16>* %2, align 2
  ret void



























}

define void @test4(i8* nocapture %head) nounwind {
vector.ph:
  %0 = getelementptr inbounds i8, i8* %head, i64 0
  %1 = bitcast i8* %0 to <16 x i8>*
  %2 = load <16 x i8>, <16 x i8>* %1, align 1
  %3 = icmp slt <16 x i8> %2, zeroinitializer
  %4 = xor <16 x i8> %2, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %5 = select <16 x i1> %3, <16 x i8> %4, <16 x i8> zeroinitializer
  store <16 x i8> %5, <16 x i8>* %1, align 1
  ret void





















}

define void @test5(i8* nocapture %head) nounwind {
vector.ph:
  %0 = getelementptr inbounds i8, i8* %head, i64 0
  %1 = bitcast i8* %0 to <16 x i8>*
  %2 = load <16 x i8>, <16 x i8>* %1, align 1
  %3 = icmp ugt <16 x i8> %2, <i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126>
  %4 = add <16 x i8> %2, <i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127>
  %5 = select <16 x i1> %3, <16 x i8> %4, <16 x i8> zeroinitializer
  store <16 x i8> %5, <16 x i8>* %1, align 1
  ret void





















}

define void @test6(i8* nocapture %head, i8 zeroext %w) nounwind {
vector.ph:
  %0 = insertelement <16 x i8> undef, i8 %w, i32 0
  %broadcast15 = shufflevector <16 x i8> %0, <16 x i8> undef, <16 x i32> zeroinitializer
  %1 = getelementptr inbounds i8, i8* %head, i64 0
  %2 = bitcast i8* %1 to <16 x i8>*
  %3 = load <16 x i8>, <16 x i8>* %2, align 1
  %4 = icmp ult <16 x i8> %3, %broadcast15
  %5 = sub <16 x i8> %3, %broadcast15
  %6 = select <16 x i1> %4, <16 x i8> zeroinitializer, <16 x i8> %5
  store <16 x i8> %6, <16 x i8>* %2, align 1
  ret void





























}

define void @test7(i16* nocapture %head) nounwind {
vector.ph:
  %0 = getelementptr inbounds i16, i16* %head, i64 0
  %1 = bitcast i16* %0 to <16 x i16>*
  %2 = load <16 x i16>, <16 x i16>* %1, align 2
  %3 = icmp slt <16 x i16> %2, zeroinitializer
  %4 = xor <16 x i16> %2, <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>
  %5 = select <16 x i1> %3, <16 x i16> %4, <16 x i16> zeroinitializer
  store <16 x i16> %5, <16 x i16>* %1, align 2
  ret void








}

define void @test8(i16* nocapture %head) nounwind {
vector.ph:
  %0 = getelementptr inbounds i16, i16* %head, i64 0
  %1 = bitcast i16* %0 to <16 x i16>*
  %2 = load <16 x i16>, <16 x i16>* %1, align 2
  %3 = icmp ugt <16 x i16> %2, <i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766, i16 32766>
  %4 = add <16 x i16> %2, <i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767, i16 -32767>
  %5 = select <16 x i1> %3, <16 x i16> %4, <16 x i16> zeroinitializer
  store <16 x i16> %5, <16 x i16>* %1, align 2
  ret void








}

define void @test9(i16* nocapture %head, i16 zeroext %w) nounwind {
vector.ph:
  %0 = insertelement <16 x i16> undef, i16 %w, i32 0
  %broadcast15 = shufflevector <16 x i16> %0, <16 x i16> undef, <16 x i32> zeroinitializer
  %1 = getelementptr inbounds i16, i16* %head, i64 0
  %2 = bitcast i16* %1 to <16 x i16>*
  %3 = load <16 x i16>, <16 x i16>* %2, align 2
  %4 = icmp ult <16 x i16> %3, %broadcast15
  %5 = sub <16 x i16> %3, %broadcast15
  %6 = select <16 x i1> %4, <16 x i16> zeroinitializer, <16 x i16> %5
  store <16 x i16> %6, <16 x i16>* %2, align 2
  ret void










}

define void @test10(i8* nocapture %head) nounwind {
vector.ph:
  %0 = getelementptr inbounds i8, i8* %head, i64 0
  %1 = bitcast i8* %0 to <32 x i8>*
  %2 = load <32 x i8>, <32 x i8>* %1, align 1
  %3 = icmp slt <32 x i8> %2, zeroinitializer
  %4 = xor <32 x i8> %2, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
  %5 = select <32 x i1> %3, <32 x i8> %4, <32 x i8> zeroinitializer
  store <32 x i8> %5, <32 x i8>* %1, align 1
  ret void








}

define void @test11(i8* nocapture %head) nounwind {
vector.ph:
  %0 = getelementptr inbounds i8, i8* %head, i64 0
  %1 = bitcast i8* %0 to <32 x i8>*
  %2 = load <32 x i8>, <32 x i8>* %1, align 1
  %3 = icmp ugt <32 x i8> %2, <i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126, i8 126>
  %4 = add <32 x i8> %2, <i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127, i8 -127>
  %5 = select <32 x i1> %3, <32 x i8> %4, <32 x i8> zeroinitializer
  store <32 x i8> %5, <32 x i8>* %1, align 1
  ret void








}

define void @test12(i8* nocapture %head, i8 zeroext %w) nounwind {
vector.ph:
  %0 = insertelement <32 x i8> undef, i8 %w, i32 0
  %broadcast15 = shufflevector <32 x i8> %0, <32 x i8> undef, <32 x i32> zeroinitializer
  %1 = getelementptr inbounds i8, i8* %head, i64 0
  %2 = bitcast i8* %1 to <32 x i8>*
  %3 = load <32 x i8>, <32 x i8>* %2, align 1
  %4 = icmp ult <32 x i8> %3, %broadcast15
  %5 = sub <32 x i8> %3, %broadcast15
  %6 = select <32 x i1> %4, <32 x i8> zeroinitializer, <32 x i8> %5
  store <32 x i8> %6, <32 x i8>* %2, align 1
  ret void










}
