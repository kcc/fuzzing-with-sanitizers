


target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128"
target triple = "i386-apple-darwin7"

define i8* @test(i8* %P, i8* %Q, i32 %x, i32 %y) nounwind readonly {
entry:
  %0 = tail call i32 @strlen(i8* %P)              
  %1 = icmp eq i32 %0, 0                          
  br i1 %1, label %bb, label %bb1

bb:                                               
  %2 = sdiv i32 %x, %y                            
  br label %bb1

bb1:                                              
  %x_addr.0 = phi i32 [ %2, %bb ], [ %x, %entry ] 
  %3 = tail call i8* @strchr(i8* %Q, i32 97)      
  %4 = tail call i32 @strlen(i8* %P)              
  %5 = add i32 %x_addr.0, %0                      
  %.sum = sub i32 %5, %4                          
  %6 = getelementptr i8, i8* %3, i32 %.sum            
  ret i8* %6
}

declare i32 @strlen(i8*) nounwind readonly

declare i8* @strchr(i8*, i32) nounwind readonly
