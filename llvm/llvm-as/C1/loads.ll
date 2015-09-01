



@g1 = constant {{i32,i8},i32} {{i32,i8} { i32 -559038737, i8 186 }, i32 -889275714 }
@g2 = constant double 1.0

@g3 = constant {i64, i64} { i64 123, i64 112312312 }


define i32 @test1() {
  %r = load i32, i32* getelementptr ({{i32,i8},i32}, {{i32,i8},i32}* @g1, i32 0, i32 0, i32 0)
  ret i32 %r








}



define i16 @test2() {
  %r = load i16, i16* bitcast(i32* getelementptr ({{i32,i8},i32}, {{i32,i8},i32}* @g1, i32 0, i32 0, i32 0) to i16*)
  ret i16 %r








}

define i16 @test2_addrspacecast() {
  %r = load i16, i16 addrspace(1)* addrspacecast(i32* getelementptr ({{i32,i8},i32}, {{i32,i8},i32}* @g1, i32 0, i32 0, i32 0) to i16 addrspace(1)*)
  ret i16 %r











}


define i16 @test3() {
  %r = load i16, i16* getelementptr(i16, i16* bitcast(i32* getelementptr ({{i32,i8},i32}, {{i32,i8},i32}* @g1, i32 0, i32 0, i32 0) to i16*), i32 1)
  ret i16 %r








}


define i16 @test4() {
  %r = load i16, i16* getelementptr(i16, i16* bitcast(i32* getelementptr ({{i32,i8},i32}, {{i32,i8},i32}* @g1, i32 0, i32 0, i32 0) to i16*), i32 2)
  ret i16 %r








}


define i64 @test6() {
  %r = load i64, i64* bitcast(double* @g2 to i64*)
  ret i64 %r








}


define i16 @test7() {
  %r = load i16, i16* bitcast(double* @g2 to i16*)
  ret i16 %r








}


define double @test8() {
  %r = load double, double* bitcast({{i32,i8},i32}* @g1 to double*)
  ret double %r






}



define i128 @test9() {
  %r = load i128, i128* bitcast({i64, i64}* @g3 to i128*)
  ret i128 %r








}


define <2 x i64> @test10() {
  %r = load <2 x i64>, <2 x i64>* bitcast({i64, i64}* @g3 to <2 x i64>*)
  ret <2 x i64> %r






}




@g4 = internal constant { i8, i8 } { i8 -95, i8 8 }

define i16 @test11() nounwind {
entry:
  %a = load i16, i16* bitcast ({ i8, i8 }* @g4 to i16*)
  ret i16 %a








}



@test12g = private constant [6 x i8] c"a\00b\00\00\00"

define i16 @test12() {
  %a = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* bitcast ([6 x i8]* @test12g to [3 x i16]*), i32 0, i64 1)
  ret i16 %a








}



@g5 = constant i8 4
define i1 @test13() {
  %A = load i1, i1* bitcast (i8* @g5 to i1*)
  ret i1 %A






}

@g6 = constant [2 x i8*] [i8* inttoptr (i64 1 to i8*), i8* inttoptr (i64 2 to i8*)]
define i64 @test14() nounwind {
entry:
  %tmp = load i64, i64* bitcast ([2 x i8*]* @g6 to i64*)
  ret i64 %tmp






}


@g6_as1 = constant [2 x i8 addrspace(1)*] [i8 addrspace(1)* inttoptr (i16 1 to i8 addrspace(1)*), i8 addrspace(1)* inttoptr (i16 2 to i8 addrspace(1)*)]
define i16 @test14_as1() nounwind {
entry:
  %tmp = load i16, i16* bitcast ([2 x i8 addrspace(1)*]* @g6_as1 to i16*)
  ret i16 %tmp






}

define i64 @test15() nounwind {
entry:
  %tmp = load i64, i64* bitcast (i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g6, i32 0, i64 1) to i64*)
  ret i64 %tmp






}

@gv7 = constant [4 x i8*] [i8* null, i8* inttoptr (i64 -14 to i8*), i8* null, i8* null]
define i64 @test16.1() {
  %v = load i64, i64* bitcast ([4 x i8*]* @gv7 to i64*), align 8
  ret i64 %v






}

define i64 @test16.2() {
  %v = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gv7, i64 0, i64 1) to i64*), align 8
  ret i64 %v






}

define i64 @test16.3() {
  %v = load i64, i64* bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @gv7, i64 0, i64 2) to i64*), align 8
  ret i64 %v






}
