
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"


define i64 @cn1() #0 {
entry:
  ret i64 281474976710655





}


define i64 @cnb() #0 {
entry:
  ret i64 281474976710575





}


define i64 @f2(i64 %x) #0 {
entry:
  ret i64 -68719476736





}


define i64 @f2a(i64 %x) #0 {
entry:
  ret i64 -361850994688





}


define i64 @f2n(i64 %x) #0 {
entry:
  ret i64 68719476735





}


define i64 @f3(i64 %x) #0 {
entry:
  ret i64 8589934591





}


define i64 @cn2n() #0 {
entry:
  ret i64 -1407374887747585






}

attributes #0 = { nounwind readnone }

