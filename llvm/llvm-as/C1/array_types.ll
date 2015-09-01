


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define [2 x i32] @InsertValue(i32 %x, i32 %y) sanitize_memory {
entry:
  %a = insertvalue [2 x i32] undef, i32 %x, 0
  %b = insertvalue [2 x i32] %a, i32 %y, 1
  ret [2 x i32] %b
}










define [2 x double] @InsertValueDouble(double %x, double %y) sanitize_memory {
entry:
  %a = insertvalue [2 x double] undef, double %x, 0
  %b = insertvalue [2 x double] %a, double %y, 1
  ret [2 x double] %b
}










define i32 @ExtractValue([2 x i32] %a) sanitize_memory {
entry:
  %x = extractvalue [2 x i32] %a, 1
  ret i32 %x
}










%MyStruct = type { i32, i32, [3 x i32] }

define i32 @ArrayInStruct(%MyStruct %s) sanitize_memory {
  %x = extractvalue %MyStruct %s, 2, 1
  ret i32 %x
}








define i32 @ArrayOfStructs([3 x { i32, i32 }] %a) sanitize_memory {
  %x = extractvalue [3 x { i32, i32 }] %a, 2, 1
  ret i32 %x
}








define <8 x i16> @ArrayOfVectors([3 x <8 x i16>] %a) sanitize_memory {
  %x = extractvalue [3 x <8 x i16>] %a, 1
  ret <8 x i16> %x
}






