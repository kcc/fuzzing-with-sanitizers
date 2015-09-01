


target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:32-f32:32:32-f64:32:32-v64:64:64-v128:128:128-a0:0:32-n32"
target triple = "thumbv7-apple-darwin10"

define void @test(i32 %mode) nounwind optsize noinline {
entry:
  br i1 undef, label %return, label %bb3

bb3:                                              
  br i1 undef, label %bb15, label %bb18

bb15:                                             
  unreachable

bb18:                                             
  switch i32 %mode, label %return [
    i32 0, label %bb26
    i32 1, label %bb56
    i32 2, label %bb107
    i32 6, label %bb150.preheader
    i32 9, label %bb310.preheader
    i32 13, label %bb414.preheader
    i32 15, label %bb468.preheader
    i32 16, label %bb522.preheader
  ]

bb150.preheader:                                  
  br i1 undef, label %bb154, label %bb160

bb310.preheader:                                  
  unreachable

bb414.preheader:                                  
  unreachable

bb468.preheader:                                  
  unreachable

bb522.preheader:                                  
  unreachable

bb26:                                             
  unreachable

bb56:                                             
  unreachable

bb107:                                            
  br label %bb110

bb110:                                            
  %asmtmp.i.i179 = tail call i16 asm "rev16 $0, $1\0A", "=l,l"(i16 undef) nounwind 
  %asmtmp.i.i178 = tail call i16 asm "rev16 $0, $1\0A", "=l,l"(i16 %asmtmp.i.i179) nounwind 
  store i16 %asmtmp.i.i178, i16* undef, align 2
  br i1 undef, label %bb122, label %bb121

bb121:                                            
  br label %bb122

bb122:                                            
  br label %bb110

bb154:                                            
  unreachable

bb160:                                            
  unreachable

return:                                           
  ret void
}
