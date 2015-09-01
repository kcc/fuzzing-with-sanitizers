




define void @test1(float* nocapture %f) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %0 = getelementptr inbounds float, float* %f, i64 %index
  %1 = bitcast float* %0 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %1, align 4
  %2 = call <4 x float> @llvm.ceil.v4f32(<4 x float> %wide.load)
  store <4 x float> %2, <4 x float>* %1, align 4
  %index.next = add i64 %index, 4
  %3 = icmp eq i64 %index.next, 1024
  br i1 %3, label %for.end, label %vector.body

for.end:                                          
  ret void







}

declare <4 x float> @llvm.ceil.v4f32(<4 x float>)  nounwind readnone

define void @test2(float* nocapture %f) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %0 = getelementptr inbounds float, float* %f, i64 %index
  %1 = bitcast float* %0 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %1, align 4
  %2 = call <4 x float> @llvm.nearbyint.v4f32(<4 x float> %wide.load)
  store <4 x float> %2, <4 x float>* %1, align 4
  %index.next = add i64 %index, 4
  %3 = icmp eq i64 %index.next, 1024
  br i1 %3, label %for.end, label %vector.body

for.end:                                          
  ret void







}

declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>)  nounwind readnone

define void @test3(float* nocapture %f, <4 x float> %b, <4 x float> %c) nounwind {
vector.ph:
  br label %vector.body

vector.body:                                      
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %0 = getelementptr inbounds float, float* %f, i64 %index
  %1 = bitcast float* %0 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %1, align 4
  %2 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %b, <4 x float> %c)
  store <4 x float> %2, <4 x float>* %1, align 4
  %index.next = add i64 %index, 4
  %3 = icmp eq i64 %index.next, 1024
  br i1 %3, label %for.end, label %vector.body

for.end:                                          
  ret void







}

declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) nounwind readnone
