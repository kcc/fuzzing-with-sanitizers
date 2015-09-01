

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"

define i32 @insert-extract-at-zero-idx(i32 %arg, float %fl) {
  
  %A = extractelement <4 x float> undef, i32 0
  
  %B = extractelement <4 x i32> undef, i32 0
  
  %C = extractelement <4 x float> undef, i32 1

  
  %D = extractelement <8 x float> undef, i32 0
  
  %E = extractelement <8 x float> undef, i32 1

  
  %F = extractelement <8 x float> undef, i32 %arg

  
  %G = insertelement <4 x float> undef, float %fl, i32 0
  
  %H = insertelement <4 x float> undef, float %fl, i32 1
  
  %I = insertelement <4 x i32> undef, i32 %arg, i32 0

  
  %J = insertelement <4 x double> undef, double undef, i32 0

  
  %K = insertelement <8 x double> undef, double undef, i32 4
  
  %L = insertelement <16 x double> undef, double undef, i32 8
  
  %M = insertelement <16 x double> undef, double undef, i32 9
  ret i32 0
}

