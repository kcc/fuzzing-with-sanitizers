

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"


define i8 @udiv_i8(i8 %a, i8 %b) nounwind {
  %conv = zext i8 %a to i32       
  %conv2 = zext i8 %b to i32      
  %div = udiv i32 %conv, %conv2   
  %conv3 = trunc i32 %div to i8   
  ret i8 %conv3


}

define i8 @urem_i8(i8 %a, i8 %b) nounwind {
  %conv = zext i8 %a to i32       
  %conv2 = zext i8 %b to i32      
  %div = urem i32 %conv, %conv2   
  %conv3 = trunc i32 %div to i8   
  ret i8 %conv3


}

define i32 @udiv_i32(i8 %a, i8 %b) nounwind {
  %conv = zext i8 %a to i32
  %conv2 = zext i8 %b to i32
  %div = udiv i32 %conv, %conv2
  ret i32 %div



}

define i32 @urem_i32(i8 %a, i8 %b) nounwind {
  %conv = zext i8 %a to i32
  %conv2 = zext i8 %b to i32
  %div = urem i32 %conv, %conv2
  ret i32 %div



}

define i32 @udiv_i32_c(i8 %a) nounwind {
  %conv = zext i8 %a to i32
  %div = udiv i32 %conv, 10
  ret i32 %div



}

define i32 @urem_i32_c(i8 %a) nounwind {
  %conv = zext i8 %a to i32
  %div = urem i32 %conv, 10
  ret i32 %div



}
