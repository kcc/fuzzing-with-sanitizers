
target datalayout = "E-p:64:64:64-a0:0:8-f32:32:32-f64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-v64:64:64-v128:128:128"

@G1 = constant i32 0            
@G2 = constant i32* @G1         

define internal i32 @test(i32** %X) {
        %Y = load i32*, i32** %X              
        %X.upgrd.1 = load i32, i32* %Y               
        ret i32 %X.upgrd.1
}

define i32 @caller(i32** %P) {
        %X = call i32 @test( i32** @G2 )                
        ret i32 %X
}

