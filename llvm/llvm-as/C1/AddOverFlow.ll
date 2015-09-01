

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"



define i16 @oppositesign(i16 %x, i16 %y) {

  %a = or i16 %x, 32768
  %b = and i16 %y, 32767
  %c = add i16 %a, %b
  ret i16 %c
}

define i16 @zero_sign_bit(i16 %a) {




  %1 = and i16 %a, 32767
  %2 = add i16 %1, 512
  ret i16 %2
}

define i16 @zero_sign_bit2(i16 %a, i16 %b) {





  %1 = and i16 %a, 32767
  %2 = and i16 %b, 32767
  %3 = add i16 %1, %2
  ret i16 %3
}

declare i16 @bounded(i16 %input)
declare i32 @__gxx_personality_v0(...)
!0 = !{i16 0, i16 32768} 
!1 = !{i16 0, i16 32769} 

define i16 @add_bounded_values(i16 %a, i16 %b) personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {

entry:
  %c = call i16 @bounded(i16 %a), !range !0
  %d = invoke i16 @bounded(i16 %b) to label %cont unwind label %lpad, !range !0
cont:

  %e = add i16 %c, %d

  ret i16 %e
lpad:
  %0 = landingpad { i8*, i32 }
          filter [0 x i8*] zeroinitializer
  ret i16 42
}

define i16 @add_bounded_values_2(i16 %a, i16 %b) personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {

entry:
  %c = call i16 @bounded(i16 %a), !range !1
  %d = invoke i16 @bounded(i16 %b) to label %cont unwind label %lpad, !range !1
cont:


  %e = add i16 %c, %d

  ret i16 %e
lpad:
  %0 = landingpad { i8*, i32 }
          filter [0 x i8*] zeroinitializer
  ret i16 42
}



define i16 @ripple_nsw1(i16 %x, i16 %y) {

  %a = and i16 %y, 1


  %b = and i16 %x, 49151

  %c = add i16 %a, %b
  ret i16 %c
}




define i16 @ripple_nsw2(i16 %x, i16 %y) {
  %a = and i16 %y, 1
  %b = and i16 %x, 49151
  %c = add i16 %b, %a
  ret i16 %c
}



define i32 @ripple_no_nsw1(i32 %x, i32 %y) {

  %a = and i32 %y, 1
  %b = add i32 %a, %x
  ret i32 %b
}



define i16 @ripple_no_nsw2(i16 %x, i16 %y) {

  %a = and i16 %y, 1


  %b = and i16 %x, 32767

  %c = add i16 %a, %b
  ret i16 %c
}
