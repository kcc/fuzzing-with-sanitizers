








define void @foobar() personality i32 (...)* @__gxx_personality_v0 {
entry:
  invoke void @_zed()
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      
  ret void

lpad:                                             
  %exn = landingpad {i8*, i32}
            cleanup
  unreachable
}

declare void @_zed() ssp align 2

declare i32 @__gxx_personality_v0(...)
