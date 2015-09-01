
target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32-n32"
target triple = "thumbv7-apple-darwin10"









@.str = private constant [7 x i8] c"%g %g\0A\00", align 4 

define i32 @main(i32 %argc, i8** nocapture %Argv) nounwind {
entry:
  %0 = icmp eq i32 %argc, 2123                    
  %U.0 = select i1 %0, double 3.282190e+01, double 8.731834e+02 
  %1 = icmp eq i32 %argc, 5123                    
  %V.0.ph = select i1 %1, double 7.779980e+01, double 0x409CCB9C779A6B51 
  %2 = insertelement <2 x double> undef, double %U.0, i32 0 
  %3 = insertelement <2 x double> %2, double %U.0, i32 1 
  %4 = insertelement <2 x double> %2, double %V.0.ph, i32 1 






  %5 = fadd <2 x double> %3, %3                   
  %6 = fadd <2 x double> %4, %4                   
  %tmp7 = extractelement <2 x double> %5, i32 0   
  %tmp5 = extractelement <2 x double> %5, i32 1   

  %7 = tail call  i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), double %tmp7, double %tmp5) nounwind 
  %tmp3 = extractelement <2 x double> %6, i32 0   
  %tmp1 = extractelement <2 x double> %6, i32 1   
  %8 = tail call  i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), double %tmp3, double %tmp1) nounwind 
  ret i32 0
}

declare i32 @printf(i8* nocapture, ...) nounwind
