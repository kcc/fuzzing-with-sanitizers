

target datalayout = "p:32:32:32"


define i64* @test1(i8* %x) {
entry:



  %a = bitcast i8* %x to i64*
  %b = load i64, i64* %a
  %c = inttoptr i64 %b to i64*

  ret i64* %c
}

define i32* @test2(i8* %x) {
entry:



  %a = bitcast i8* %x to i32*
  %b = load i32, i32* %a
  %c = inttoptr i32 %b to i32*

  ret i32* %c
}

define i64* @test3(i8* %x) {
entry:



  %a = bitcast i8* %x to i32*
  %b = load i32, i32* %a
  %c = inttoptr i32 %b to i64*

  ret i64* %c
}

define i64 @test4(i8* %x) {
entry:




  %a = bitcast i8* %x to i64**
  %b = load i64*, i64** %a
  %c = ptrtoint i64* %b to i64

  ret i64 %c
}

define i32 @test5(i8* %x) {
entry:



  %a = bitcast i8* %x to i32**
  %b = load i32*, i32** %a
  %c = ptrtoint i32* %b to i32

  ret i32 %c
}

define i64 @test6(i8* %x) {
entry:




  %a = bitcast i8* %x to i32**
  %b = load i32*, i32** %a
  %c = ptrtoint i32* %b to i64

  ret i64 %c
}

