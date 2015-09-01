




declare void @g()
declare void @terminate(i8*)

define void @f() personality i8* null {
  invoke void @g()
    to label %ret unwind label %lpad
ret:
  ret void
lpad:
  %vals = landingpad { i8*, i32 } catch i8* null
  %ptr = extractvalue { i8*, i32 } %vals, 0
  call void @terminate(i8* %ptr)
  unreachable
}






