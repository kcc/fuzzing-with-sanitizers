











define i8* @foo(i8 %a, {} %c) personality i8* bitcast (i32 (...)* @baz to i8*) {
entry:



  invoke void @bar ()
    to label %unreachable unwind label %handler

unreachable:
  unreachable

handler:
  %tmp = landingpad { i8*, i32 }
  cleanup
  resume { i8*, i32 } undef
}

declare void @bar()
declare i32 @baz(...)
