

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-apple-darwin10.0.0"

define i32 @snd_xbytes(i32 %v, i32 %from, i32 %to) nounwind readnone ssp {
entry:
  %cmp19 = icmp eq i32 %to, 0                     
  br i1 %cmp19, label %while.end, label %while.cond

while.cond:                                       
  %y.021 = phi i32 [ %rem, %while.cond ], [ %to, %entry ] 
  %x.020 = phi i32 [ %y.021, %while.cond ], [ %from, %entry ] 
  %rem = urem i32 %x.020, %y.021                  
  %cmp = icmp eq i32 %rem, 0                      
  br i1 %cmp, label %while.end, label %while.cond

while.end:                                        
  %x.0.lcssa = phi i32 [ %from, %entry ], [ %y.021, %while.cond ] 
  %div = udiv i32 %from, %x.0.lcssa               
  %div11 = udiv i32 %to, %x.0.lcssa               
  %conv = zext i32 %v to i64                      
  %conv14 = zext i32 %div11 to i64                




  %mul = mul i64 %conv14, %conv                   
  %conv16 = zext i32 %div to i64                  
  %div17 = udiv i64 %mul, %conv16                 
  %conv18 = trunc i64 %div17 to i32               
  ret i32 %conv18
}
