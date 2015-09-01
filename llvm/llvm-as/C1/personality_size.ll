



define void @_Z1fv() personality i32 (...)* @__gxx_personality_v0 {
entry:
  invoke void @_Z1gv()
          to label %return unwind label %unwind

unwind:                                           
  %exn = landingpad {i8*, i32}
            cleanup
  ret void

return:                                           
  ret void
}

declare void @_Z1gv()

declare i32 @__gxx_personality_v0(...)







