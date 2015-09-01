

define i8 @call_with_range() {
  bitcast i8 0 to i8 
  %out = call i8 @dummy(), !range !0
  ret i8 %out
}

define i8 @call_no_range() {




  bitcast i8 0 to i8
  %out = call i8 @dummy()
  ret i8 %out
}

define i8 @call_different_range() {




  bitcast i8 0 to i8
  %out = call i8 @dummy(), !range !1
  ret i8 %out
}

define i8 @invoke_with_range() personality i8* undef {
  %out = invoke i8 @dummy() to label %next unwind label %lpad, !range !0

next:
  ret i8 %out

lpad:
  %pad = landingpad { i8*, i32 } cleanup
  resume { i8*, i32 } zeroinitializer
}

define i8 @invoke_no_range() personality i8* undef {


  %out = invoke i8 @dummy() to label %next unwind label %lpad

next:
  ret i8 %out

lpad:
  %pad = landingpad { i8*, i32 } cleanup
  resume { i8*, i32 } zeroinitializer
}

define i8 @invoke_different_range() personality i8* undef {


  %out = invoke i8 @dummy() to label %next unwind label %lpad, !range !1

next:
  ret i8 %out

lpad:
  %pad = landingpad { i8*, i32 } cleanup
  resume { i8*, i32 } zeroinitializer
}

define i8 @invoke_with_same_range() personality i8* undef {


  %out = invoke i8 @dummy() to label %next unwind label %lpad, !range !0

next:
  ret i8 %out

lpad:
  %pad = landingpad { i8*, i32 } cleanup
  resume { i8*, i32 } zeroinitializer
}

define i8 @call_with_same_range() {


  bitcast i8 0 to i8
  %out = call i8 @dummy(), !range !0
  ret i8 %out
}



declare i8 @dummy()
declare i32 @__gxx_personality_v0(...)

!0 = !{i8 0, i8 2}
!1 = !{i8 5, i8 7}
