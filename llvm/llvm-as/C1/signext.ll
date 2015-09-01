

target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128:n8:16:32:64"

define i32 @test1(i32 %x) {
        %tmp.1 = and i32 %x, 65535              
        %tmp.2 = xor i32 %tmp.1, -32768         
        %tmp.3 = add i32 %tmp.2, 32768          
        ret i32 %tmp.3




}

define i32 @test2(i32 %x) {
        %tmp.1 = and i32 %x, 65535              
        %tmp.2 = xor i32 %tmp.1, 32768          
        %tmp.3 = add i32 %tmp.2, -32768         
        ret i32 %tmp.3




}

define i32 @test3(i16 %P) {
        %tmp.1 = zext i16 %P to i32             
        %tmp.4 = xor i32 %tmp.1, 32768          
        %tmp.5 = add i32 %tmp.4, -32768         
        ret i32 %tmp.5



}

define i32 @test4(i32 %x) {
        %tmp.1 = and i32 %x, 255                
        %tmp.2 = xor i32 %tmp.1, 128            
        %tmp.3 = add i32 %tmp.2, -128           
        ret i32 %tmp.3




}

define i32 @test5(i32 %x) {
        %tmp.2 = shl i32 %x, 16         
        %tmp.4 = ashr i32 %tmp.2, 16            
        ret i32 %tmp.4




}

define i32 @test6(i16 %P) {
  %tmp.1 = zext i16 %P to i32                     
  %sext1 = shl i32 %tmp.1, 16                     
  %tmp.5 = ashr i32 %sext1, 16                    
  ret i32 %tmp.5



}

define i32 @test7(i32 %x) nounwind readnone {
entry:
  %shr = lshr i32 %x, 5                           
  %xor = xor i32 %shr, 67108864                   
  %sub = add i32 %xor, -67108864                  
  ret i32 %sub



}

