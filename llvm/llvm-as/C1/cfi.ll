









define void @bar() personality i32 (...)* @__gxx_personality_v0 {
entry:
  %call = invoke i32 @foo()
          to label %invoke.cont unwind label %lpad

invoke.cont:
  ret void

lpad:
  %exn = landingpad {i8*, i32}
            catch i8* null
  ret void
}

declare i32 @foo()

declare i32 @__gxx_personality_v0(...)
