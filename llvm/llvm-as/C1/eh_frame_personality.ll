


declare i32 @__gxx_personality_v0(...)

declare void @bar()

define i64 @foo(i64 %lhs, i64 %rhs) personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  invoke void @bar() to label %end unwind label %clean
end:
 ret i64 0

clean:
  %tst = landingpad { i8*, i32 } cleanup
  ret i64 42
}






























