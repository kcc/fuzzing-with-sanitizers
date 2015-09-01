















define void @_Z4testii(i32 %a, i32 %b) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  invoke void @_Z3fooi(i32 %a)
          to label %try.cont unwind label %lpad

lpad:                                             
  %0 = landingpad { i8*, i32 }
          catch i8* null
  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = tail call i8* @__cxa_begin_catch(i8* %1) #2
  invoke void @_Z3fooi(i32 %b)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     
  tail call void @__cxa_end_catch()
  br label %try.cont

try.cont:                                         
  ret void

lpad1:                                            
  %3 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %eh.resume unwind label %terminate.lpad

eh.resume:                                        
  resume { i8*, i32 } %3

terminate.lpad:                                   
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  tail call void @__clang_call_terminate(i8* %5) #3
  unreachable
}

declare void @_Z3fooi(i32) #0

declare i32 @__gxx_personality_v0(...)

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()


define linkonce_odr hidden void @__clang_call_terminate(i8*) #1 {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #2
  tail call void @_ZSt9terminatev() #3
  unreachable
}

declare void @_ZSt9terminatev()




