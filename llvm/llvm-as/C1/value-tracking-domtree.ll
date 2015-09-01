

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "nvptx64-unknown-unknown"













define float* @guarded_or(float* %input, i64 %i) {

entry:
  %is4 = icmp eq i64 %i, 4
  br i1 %is4, label %then, label %exit

then:
  %or = or i64 %i, 3
  %p = getelementptr inbounds float, float* %input, i64 %or


  ret float* %p

exit:
  ret float* null
}
