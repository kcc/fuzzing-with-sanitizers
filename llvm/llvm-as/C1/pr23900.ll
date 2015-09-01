













target triple = "x86_64-pc-windows-msvc18.0.0"
define void @f(i32 %x) personality i8* bitcast (i32 (...)* @__CxxFrameHandler3 to i8*) {
  invoke void @h()
          to label %invoke.cont unwind label %lpad
invoke.cont:
  ret void
lpad:
 landingpad { i8*, i32 }
          cleanup
  call void @g(i32 %x)
  ret void
}
declare void @h()
declare i32 @__CxxFrameHandler3(...)
declare void @g(i32 %x)
