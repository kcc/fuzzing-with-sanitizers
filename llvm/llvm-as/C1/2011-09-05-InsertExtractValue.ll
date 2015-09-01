

declare void @bar()

define void @test1() personality i32 (i32, i64, i8*, i8*)* @__gxx_personality_v0 {
entry:
  invoke void @bar() to label %cont unwind label %lpad
cont:
  ret void
lpad:
  %ex = landingpad { i8*, i32 } cleanup
  %exc_ptr = extractvalue { i8*, i32 } %ex, 0
  %filter = extractvalue { i8*, i32 } %ex, 1
  %exc_ptr2 = insertvalue { i8*, i32 } undef, i8* %exc_ptr, 0
  %filter2 = insertvalue { i8*, i32 } %exc_ptr2, i32 %filter, 1
  resume { i8*, i32 } %filter2



}

declare i32 @__gxx_personality_v0(i32, i64, i8*, i8*)

define { i8, i32 } @test2({ i8*, i32 } %x) {
  %ex = extractvalue { i8*, i32 } %x, 1
  %ins = insertvalue { i8, i32 } undef, i32 %ex, 1
  ret { i8, i32 } %ins

}

define i32 @test3(i32 %a, float %b) {
  %agg1 = insertvalue {i32, float} undef, i32 %a, 0
  %agg2 = insertvalue {i32, float} %agg1, float %b, 1
  %ev = extractvalue {i32, float} %agg2, 0
  ret i32 %ev


}

define i8 @test4(<8 x i8> %V) {
  %add     = add <8 x i8> %V, bitcast (double 0x319BEB8FD172E36 to <8 x i8>)
  %extract = extractelement <8 x i8> %add, i32 6
  ret i8 %extract




}
