








target datalayout = "E-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f128:64:128-n32"
target triple = "powerpc-apple-darwin9"

define void @foo() nounwind {
entry:
  br label %bb11

bb11:
  %i = phi i32 [ 0, %entry ], [ %i.next, %bb ] 
  %ii = shl i32 %i, 2                       
  %c0 = icmp eq i32 %i, undef                
  br i1 %c0, label %bb13, label %bb

bb:
  %t = load i8*, i8** undef, align 16                
  %p = getelementptr i8, i8* %t, i32 %ii 
  %c1 = icmp ult i8* %p, undef          
  %i.next = add i32 %i, 1                        
  br i1 %c1, label %bb11, label %bb13

bb13:
  unreachable
}
