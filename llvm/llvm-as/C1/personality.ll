



define void @_Z1fv() personality i32 (...)* @__gxx_personality_v0 {
entry:
  invoke void @_Z1gv()
          to label %return unwind label %unwind

unwind:                                           
  %exn = landingpad {i8*, i32}
            cleanup
  br i1 false, label %eh_then, label %cleanup20

eh_then:                                          
  invoke void @__cxa_end_catch()
          to label %return unwind label %unwind10

unwind10:                                         
  %exn10 = landingpad {i8*, i32}
            cleanup
  %upgraded.eh_select13 = extractvalue { i8*, i32 } %exn10, 1
  %upgraded.eh_select131 = sext i32 %upgraded.eh_select13 to i64
  %tmp18 = icmp slt i64 %upgraded.eh_select131, 0
  br i1 %tmp18, label %filter, label %cleanup20

filter:                                           
  unreachable

cleanup20:                                        
  %eh_selector.0 = phi i64 [ 0, %unwind ], [ %upgraded.eh_select131, %unwind10 ]
  ret void

return:                                           
  ret void
}

declare void @_Z1gv()

declare void @__cxa_end_catch()

declare i32 @__gxx_personality_v0(...)










