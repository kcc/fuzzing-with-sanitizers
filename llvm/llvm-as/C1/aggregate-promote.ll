
target datalayout = "E-p:64:64:64-a0:0:8-f32:32:32-f64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-v64:64:64-v128:128:128"

%QuadTy = type { i32, i32, i32, i32 }
@G = constant %QuadTy {
    i32 0, 
    i32 0, 
    i32 17, 
    i32 25 }            

define internal i32 @test(%QuadTy* %P) {
        %A = getelementptr %QuadTy, %QuadTy* %P, i64 0, i32 3            
        %B = getelementptr %QuadTy, %QuadTy* %P, i64 0, i32 2            
        %a = load i32, i32* %A               
        %b = load i32, i32* %B               
        %V = add i32 %a, %b             
        ret i32 %V
}

define i32 @caller() {
        %V = call i32 @test( %QuadTy* @G )              
        ret i32 %V
}

