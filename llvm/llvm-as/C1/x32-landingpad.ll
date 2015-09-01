





declare void @foo()
declare void @bar(i8*, i32) noreturn
declare i32 @__gxx_personality_v0(...)

define void @test1() uwtable personality i32 (...)* @__gxx_personality_v0 {
entry:
  invoke void @foo() to label %done unwind label %lpad
done:
  ret void
lpad:
  %0 = landingpad { i8*, i32 } cleanup





  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = extractvalue { i8*, i32 } %0, 1
  call void @bar(i8* %1, i32 %2)
  unreachable
}
