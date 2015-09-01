

target datalayout = "e-i64:64-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

@g1 = external global <4 x i32> 

@g2 = global <4 x i32> zeroinitializer 

