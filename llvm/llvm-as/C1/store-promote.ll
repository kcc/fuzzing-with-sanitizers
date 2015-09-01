




target datalayout = "E-p:64:64:64-a0:0:8-f32:32:32-f64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-v64:64:64-v128:128:128"

@A = global i32 7               
@B = global i32 8               
@C = global [2 x i32] [ i32 4, i32 8 ]          

define i32 @test1(i1 %c) {
        %Atmp = load i32, i32* @A            
        br label %Loop

Loop:           
        %ToRemove = load i32, i32* @A                
        store i32 %Atmp, i32* @B
        br i1 %c, label %Out, label %Loop

Out:            
        %X = sub i32 %ToRemove, %Atmp           
        ret i32 %X
        







}

define i32 @test2(i1 %c) {
        br label %Loop

Loop:           
        %AVal = load i32, i32* @A            
        %C0 = getelementptr [2 x i32], [2 x i32]* @C, i64 0, i64 0         
        store i32 %AVal, i32* %C0
        %BVal = load i32, i32* @B            
        %C1 = getelementptr [2 x i32], [2 x i32]* @C, i64 0, i64 1         
        store i32 %BVal, i32* %C1
        br i1 %c, label %Out, label %Loop

Out:            
        %X = sub i32 %AVal, %BVal               
        ret i32 %X




}

