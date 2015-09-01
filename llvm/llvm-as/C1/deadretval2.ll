



@P = external global i32                


define internal i32 @test(i32 %DEADARG) {
        ret i32 %DEADARG
}

define internal i32 @test2(i32 %DEADARG) {
        %DEADRETVAL = call i32 @test( i32 %DEADARG )            
        ret i32 %DEADRETVAL
}

define void @test3(i32 %X) {
        %DEADRETVAL = call i32 @test2( i32 %X )         
        ret void
}

define internal i32 @foo() {
        %DEAD = load i32, i32* @P            
        ret i32 %DEAD
}

define internal i32 @id(i32 %X) {
        ret i32 %X
}

define void @test4() {
        %DEAD = call i32 @foo( )                
        %DEAD2 = call i32 @id( i32 %DEAD )              
        ret void
}







define internal i32 @test5() {
  ret i32 123 
}

define i32 @test6() {
  %LIVE = call i32 @test5()
  ret i32 %LIVE
}

define i32 @test7() {
  %LIVE = call i32 @test8()
  ret i32 %LIVE
}

define internal i32 @test8() {
  ret i32 124
}
