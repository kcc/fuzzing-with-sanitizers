


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:64"
target triple = "armv7-apple-darwin9"

%struct.anon = type { [3 x double], double, %struct.node*, [64 x %struct.bnode*], [64 x %struct.bnode*] }
%struct.bnode = type { i16, double, [3 x double], i32, i32, [3 x double], [3 x double], [3 x double], double, %struct.bnode*, %struct.bnode* }
%struct.icstruct = type { [3 x i32], i16 }
%struct.node = type { i16, double, [3 x double], i32, i32 }

declare double @floor(double) nounwind readnone

define void @intcoord(%struct.icstruct* noalias nocapture sret %agg.result, i1 %a, double %b) {
entry:
  br i1 %a, label %bb3, label %bb1

bb1:                                              
  unreachable

bb3:                                              
  br i1 %a, label %bb7, label %bb5

bb5:                                              
  unreachable

bb7:                                              
  br i1 %a, label %bb11, label %bb9

bb9:                                              
  %0 = tail call  double @floor(double %b) nounwind readnone 
  br label %bb11

bb11:                                             
  %1 = getelementptr %struct.icstruct, %struct.icstruct* %agg.result, i32 0, i32 0, i32 0 
  store i32 0, i32* %1
  ret void
}
