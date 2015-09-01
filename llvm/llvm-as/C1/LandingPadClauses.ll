

@T1 = external constant i32
@T2 = external constant i32
@T3 = external constant i32

declare i32 @generic_personality(i32, i64, i8*, i8*)
declare i32 @__gxx_personality_v0(i32, i64, i8*, i8*)
declare i32 @__objc_personality_v0(i32, i64, i8*, i8*)
declare i32 @__C_specific_handler(...)

declare void @bar()

define void @foo_generic() personality i32 (i32, i64, i8*, i8*)* @generic_personality {

  invoke void @bar()
    to label %cont.a unwind label %lpad.a
cont.a:
  invoke void @bar()
    to label %cont.b unwind label %lpad.b
cont.b:
  invoke void @bar()
    to label %cont.c unwind label %lpad.c
cont.c:
  invoke void @bar()
    to label %cont.d unwind label %lpad.d
cont.d:
  invoke void @bar()
    to label %cont.e unwind label %lpad.e
cont.e:
  invoke void @bar()
    to label %cont.f unwind label %lpad.f
cont.f:
  invoke void @bar()
    to label %cont.g unwind label %lpad.g
cont.g:
  invoke void @bar()
    to label %cont.h unwind label %lpad.h
cont.h:
  invoke void @bar()
    to label %cont.i unwind label %lpad.i
cont.i:
  ret void

lpad.a:
  %a = landingpad { i8*, i32 }
          catch i32* @T1
          catch i32* @T2
          catch i32* @T1
          catch i32* @T2
  unreachable





lpad.b:
  %b = landingpad { i8*, i32 }
          filter [0 x i32*] zeroinitializer
          catch i32* @T1
  unreachable




lpad.c:
  %c = landingpad { i8*, i32 }
          catch i32* @T1
          filter [1 x i32*] [i32* @T1]
          catch i32* @T2
  unreachable





lpad.d:
  %d = landingpad { i8*, i32 }
          filter [3 x i32*] zeroinitializer
  unreachable




lpad.e:
  %e = landingpad { i8*, i32 }
          catch i32* @T1
          filter [3 x i32*] [i32* @T1, i32* @T2, i32* @T2]
  unreachable





lpad.f:
  %f = landingpad { i8*, i32 }
          filter [2 x i32*] [i32* @T2, i32* @T1]
          filter [1 x i32*] [i32* @T1]
  unreachable




lpad.g:
  %g = landingpad { i8*, i32 }
          filter [1 x i32*] [i32* @T1]
          catch i32* @T3
          filter [2 x i32*] [i32* @T2, i32* @T1]
  unreachable





lpad.h:
  %h = landingpad { i8*, i32 }
          filter [2 x i32*] [i32* @T1, i32* null]
          filter [1 x i32*] zeroinitializer
  unreachable




lpad.i:
  %i = landingpad { i8*, i32 }
          cleanup
          filter [0 x i32*] zeroinitializer
  unreachable



}

define void @foo_cxx() personality i32 (i32, i64, i8*, i8*)* @__gxx_personality_v0 {

  invoke void @bar()
    to label %cont.a unwind label %lpad.a
cont.a:
  invoke void @bar()
    to label %cont.b unwind label %lpad.b
cont.b:
  invoke void @bar()
    to label %cont.c unwind label %lpad.c
cont.c:
  invoke void @bar()
    to label %cont.d unwind label %lpad.d
cont.d:
  ret void

lpad.a:
  %a = landingpad { i8*, i32 }
          catch i32* null
          catch i32* @T1
  unreachable




lpad.b:
  %b = landingpad { i8*, i32 }
          filter [1 x i32*] zeroinitializer
  unreachable




lpad.c:
  %c = landingpad { i8*, i32 }
          filter [2 x i32*] [i32* @T1, i32* null]
  unreachable




lpad.d:
  %d = landingpad { i8*, i32 }
          cleanup
          catch i32* null
  unreachable



}

define void @foo_objc() personality i32 (i32, i64, i8*, i8*)* @__objc_personality_v0 {

  invoke void @bar()
    to label %cont.a unwind label %lpad.a
cont.a:
  invoke void @bar()
    to label %cont.b unwind label %lpad.b
cont.b:
  invoke void @bar()
    to label %cont.c unwind label %lpad.c
cont.c:
  invoke void @bar()
    to label %cont.d unwind label %lpad.d
cont.d:
  ret void

lpad.a:
  %a = landingpad { i8*, i32 }
          catch i32* null
          catch i32* @T1
  unreachable




lpad.b:
  %b = landingpad { i8*, i32 }
          filter [1 x i32*] zeroinitializer
  unreachable




lpad.c:
  %c = landingpad { i8*, i32 }
          filter [2 x i32*] [i32* @T1, i32* null]
  unreachable




lpad.d:
  %d = landingpad { i8*, i32 }
          cleanup
          catch i32* null
  unreachable



}

define void @foo_seh() personality i32 (...)* @__C_specific_handler {

  invoke void @bar()
    to label %cont.a unwind label %lpad.a
cont.a:
  invoke void @bar()
    to label %cont.b unwind label %lpad.b
cont.b:
  invoke void @bar()
    to label %cont.c unwind label %lpad.c
cont.c:
  invoke void @bar()
    to label %cont.d unwind label %lpad.d
cont.d:
  ret void

lpad.a:
  %a = landingpad { i8*, i32 }
          catch i32* null
          catch i32* @T1
  unreachable




lpad.b:
  %b = landingpad { i8*, i32 }
          filter [1 x i32*] zeroinitializer
  unreachable




lpad.c:
  %c = landingpad { i8*, i32 }
          filter [2 x i32*] [i32* @T1, i32* null]
  unreachable




lpad.d:
  %d = landingpad { i8*, i32 }
          cleanup
          catch i32* null
  unreachable



}
