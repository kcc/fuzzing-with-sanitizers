


define i32 @test1(i32 %X, i8 %A) {
        %shift.upgrd.1 = zext i8 %A to i32              
        
        %Y = ashr i32 %X, %shift.upgrd.1                
        %Z = and i32 %Y, 1              
        ret i32 %Z


}

define i32 @test2(i8 %tmp) {
        %tmp3 = zext i8 %tmp to i32             
        %tmp4 = add i32 %tmp3, 7                
        %tmp5 = ashr i32 %tmp4, 3               
        ret i32 %tmp5


}

define i64 @test3(i1 %X, i64 %Y, i1 %Cond) {
  br i1 %Cond, label %T, label %F
T:
  %X2 = sext i1 %X to i64
  br label %C
F:
  %Y2 = ashr i64 %Y, 63
  br label %C
C:
  %P = phi i64 [%X2, %T], [%Y2, %F] 
  %S = ashr i64 %P, 12
  ret i64 %S
  



}

define i64 @test4(i1 %X, i64 %Y, i1 %Cond) {
  br i1 %Cond, label %T, label %F
T:
  %X2 = sext i1 %X to i64
  br label %C
F:
  %Y2 = ashr i64 %Y, 63
  br label %C
C:
  %P = phi i64 [%X2, %T], [%Y2, %F] 
  %R = shl i64 %P, 12
  %S = ashr i64 %R, 12
  ret i64 %S
  



}


define i32 @test5(i32 %Y) {
  br i1 undef, label %A, label %C
A:
  br i1 undef, label %B, label %D
B:
  br label %D
C:
  br i1 undef, label %D, label %E
D:
  %P = phi i32 [0, %A], [0, %B], [%Y, %C] 
  %S = ashr i32 %P, 16
  ret i32 %S



E:
  ret i32 0
}
