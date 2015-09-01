


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32"
target triple = "i386-apple-darwin10.3"

define void @a() nounwind ssp {
entry:


  %z = alloca <16 x i8>                           
  %"alloca point" = bitcast i32 0 to i32          
  store <16 x i8> zeroinitializer, <16 x i8>* %z, align 16
  call void @b(<16 x i8>* %z) nounwind
  br label %return

return:                                           
  ret void
}

declare void @b(<16 x i8>*)
