

target datalayout = "e-p:64:32-i64:32-v32:32-n32-S64"


declare void @llvm.lifetime.start(i64, i8* nocapture) #0


declare void @llvm.lifetime.end(i64, i8* nocapture) #0




define void @wombat(<4 x float> %arg1) {
bb:
  %tmp = alloca <4 x float>, align 16
  %tmp8 = bitcast <4 x float>* %tmp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %tmp8)
  store <4 x float> %arg1, <4 x float>* %tmp, align 16
  %tmp17 = bitcast <4 x float>* %tmp to <3 x float>*
  %tmp18 = load <3 x float>, <3 x float>* %tmp17
  %tmp20 = bitcast <4 x float>* %tmp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %tmp20)
  call void @wombat3(<3 x float> %tmp18)
  ret void
}


declare void @wombat3(<3 x float>) #0

attributes #0 = { nounwind }
