
target datalayout = "e-m:e-p:32:32-i1:32-i64:64-a:0-v32:32-n16:32"
target triple = "hexagon"







target datalayout = "e-m:e-p:32:32-i1:32-i64:64-a:0-v32:32-n16:32"
target triple = "hexagon"


define i32 @foo(i32 %Rs, i32 %Rt, i32 %Ru) #0 {
entry:
  %0 = tail call i32 @llvm.hexagon.S2.asr.r.r.sat(i32 %Rs, i32 %Ru)
  %1 = tail call i32 @llvm.hexagon.S2.asr.r.r.sat(i32 %Rt, i32 %Ru)
  %add = add nsw i32 %1, %0
  ret i32 %add
}


declare i32 @llvm.hexagon.S2.asr.r.r.sat(i32, i32) #1

attributes #0 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

