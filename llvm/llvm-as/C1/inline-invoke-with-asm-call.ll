
target triple = "x86_64-apple-darwin"








define void @caller() personality i8* bitcast (i32 (...)* @__objc_personality_v0 to i8*) {
  br i1 undef, label %1, label %4


  invoke void @callee_with_asm()
          to label %4 unwind label %2


  %3 = landingpad { i8*, i32 }
          cleanup
  resume { i8*, i32 } undef


  ret void
}

define void @callee_with_asm() {
  call void asm sideeffect "mov\09r7, r7\09\09@ marker for objc_retainAutoreleaseReturnValue", ""()
  ret void
}

declare i32 @__objc_personality_v0(...)
