



target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.8.0"

declare i8* @malloc(i64) nounwind

define noalias i8* @test1() nounwind uwtable ssp {
entry:
  %call = tail call i8* @malloc(i64 100) nounwind
  %0 = load i8, i8* %call, align 1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  store i8 0, i8* %call, align 1
  br label %if.end

if.end:                                           
  ret i8* %call








}

declare i8* @_Znwm(i64) nounwind

define noalias i8* @test2() nounwind uwtable ssp {
entry:
  %call = tail call i8* @_Znwm(i64 100) nounwind
  %0 = load i8, i8* %call, align 1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          
  store i8 0, i8* %call, align 1
  br label %if.end

if.end:                                           
  ret i8* %call








}
