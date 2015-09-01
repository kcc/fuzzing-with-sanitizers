







%struct.A = type { i8 }

@_ZTIi = external constant i8*

declare void @_ZN1AC1Ev(%struct.A*)

declare void @_ZN1AD1Ev(%struct.A*)

declare void @use(i32) nounwind

declare void @opaque()

declare i32 @llvm.eh.typeid.for(i8*) nounwind

declare i32 @__gxx_personality_v0(...)

declare i8* @__cxa_begin_catch(i8*)

declare void @__cxa_end_catch()

declare void @_ZSt9terminatev()

define internal void @test0_in() alwaysinline uwtable ssp personality i32 (...)* @__gxx_personality_v0 {
entry:
  %a = alloca %struct.A, align 1
  %b = alloca %struct.A, align 1
  call void @_ZN1AC1Ev(%struct.A* %a)
  invoke void @_ZN1AC1Ev(%struct.A* %b)
          to label %invoke.cont unwind label %lpad

invoke.cont:
  invoke void @_ZN1AD1Ev(%struct.A* %b)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:
  call void @_ZN1AD1Ev(%struct.A* %a)
  ret void

lpad:
  %exn = landingpad {i8*, i32}
            cleanup
  invoke void @_ZN1AD1Ev(%struct.A* %a)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:
  resume { i8*, i32 } %exn

terminate.lpad:
  %exn1 = landingpad {i8*, i32}
            catch i8* null
  call void @_ZSt9terminatev() noreturn nounwind
  unreachable
}

define void @test0_out() uwtable ssp personality i32 (...)* @__gxx_personality_v0 {
entry:
  invoke void @test0_in()
          to label %ret unwind label %lpad

ret:
  ret void

lpad:                                             
  %exn = landingpad {i8*, i32}
            catch i8* bitcast (i8** @_ZTIi to i8*)
  %eh.exc = extractvalue { i8*, i32 } %exn, 0
  %eh.selector = extractvalue { i8*, i32 } %exn, 1
  %0 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) nounwind
  %1 = icmp eq i32 %eh.selector, %0
  br i1 %1, label %catch, label %eh.resume

catch:
  %ignored = call i8* @__cxa_begin_catch(i8* %eh.exc) nounwind
  call void @__cxa_end_catch() nounwind
  br label %ret

eh.resume:
  resume { i8*, i32 } %exn
}




























define void @test1_out() uwtable ssp personality i32 (...)* @__gxx_personality_v0 {
entry:
  invoke void @test0_in()
          to label %cont unwind label %lpad

cont:
  invoke void @test0_in()
          to label %ret unwind label %lpad

ret:
  ret void

lpad:
  %x = phi i32 [ 0, %entry ], [ 1, %cont ]
  %y = phi i32 [ 1, %entry ], [ 4, %cont ]
  %exn = landingpad {i8*, i32}
            catch i8* bitcast (i8** @_ZTIi to i8*)
  %eh.exc = extractvalue { i8*, i32 } %exn, 0
  %eh.selector = extractvalue { i8*, i32 } %exn, 1
  %0 = call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTIi to i8*)) nounwind
  %1 = icmp eq i32 %eh.selector, %0
  br i1 %1, label %catch, label %eh.resume

catch:
  %ignored = call i8* @__cxa_begin_catch(i8* %eh.exc) nounwind
  call void @use(i32 %x)
  call void @use(i32 %y)
  call void @__cxa_end_catch() nounwind
  br label %ret

eh.resume:
  resume { i8*, i32 } %exn
}











































































define void @test2_out() uwtable ssp personality i32 (...)* @__gxx_personality_v0 {
entry:
  invoke void @test0_in()
          to label %ret unwind label %lpad

ret:
  ret void

lpad:
  %exn = landingpad {i8*, i32}
            cleanup
  call void @_ZSt9terminatev()
  unreachable
}















define void @test3_out() uwtable ssp personality i32 (...)* @__gxx_personality_v0 {
entry:
  invoke void @test0_in()
          to label %ret unwind label %lpad

ret:
  ret void

lpad:
  %exn = landingpad {i8*, i32}
            catch i8* bitcast (i8** @_ZTIi to i8*)
  br label %lpad.cont

lpad.cont:
  call void @_ZSt9terminatev()
  unreachable
}

















define void @test4_out() uwtable ssp personality i32 (...)* @__gxx_personality_v0 {
entry:
  invoke void @test0_in()
          to label %cont unwind label %lpad.crit

cont:
  invoke void @opaque()
          to label %ret unwind label %lpad

ret:
  ret void

lpad.crit:
  %exn = landingpad {i8*, i32}
            catch i8* bitcast (i8** @_ZTIi to i8*)
  call void @opaque() nounwind
  br label %terminate

lpad:
  %exn2 = landingpad {i8*, i32}
            catch i8* bitcast (i8** @_ZTIi to i8*)
  br label %terminate

terminate:
  %phi = phi i32 [ 0, %lpad.crit ], [ 1, %lpad ]
  call void @use(i32 %phi)
  call void @_ZSt9terminatev()
  unreachable
}

































