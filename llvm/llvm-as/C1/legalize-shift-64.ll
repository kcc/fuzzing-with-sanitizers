
define i64 @test1(i32 %xx, i32 %test) nounwind {
  %conv = zext i32 %xx to i64
  %and = and i32 %test, 7
  %sh_prom = zext i32 %and to i64
  %shl = shl i64 %conv, %sh_prom
  ret i64 %shl





}

define i64 @test2(i64 %xx, i32 %test) nounwind {
  %and = and i32 %test, 7
  %sh_prom = zext i32 %and to i64
  %shl = shl i64 %xx, %sh_prom
  ret i64 %shl







}

define i64 @test3(i64 %xx, i32 %test) nounwind {
  %and = and i32 %test, 7
  %sh_prom = zext i32 %and to i64
  %shr = lshr i64 %xx, %sh_prom
  ret i64 %shr







}

define i64 @test4(i64 %xx, i32 %test) nounwind {
  %and = and i32 %test, 7
  %sh_prom = zext i32 %and to i64
  %shr = ashr i64 %xx, %sh_prom
  ret i64 %shr







}


define <2 x i64> @test5(<2 x i64> %A, <2 x i64> %B) {
  %shl = shl <2 x i64> %A, %B
  ret <2 x i64> %shl





}


define i32 @test6() {
  %x = alloca i32, align 4
  %t = alloca i64, align 8
  store i32 1, i32* %x, align 4
  store i64 1, i64* %t, align 8  
  %load = load i32, i32* %x, align 4
  %shl = shl i32 %load, 8
  %add = add i32 %shl, -224
  %sh_prom = zext i32 %add to i64
  %shl1 = shl i64 1, %sh_prom
  %cmp = icmp ne i64 %shl1, 4294967296
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          
  ret i32 1

if.end:                                           
  ret i32 0







}
