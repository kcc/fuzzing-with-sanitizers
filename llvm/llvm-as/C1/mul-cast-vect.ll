




target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:64:128-a0:0:64-n32-S64"
target triple = "armv7--linux-gnueabihf"

%T216 = type <2 x i16>
%T232 = type <2 x i32>
%T264 = type <2 x i64>

%T416 = type <4 x i16>
%T432 = type <4 x i32>
%T464 = type <4 x i64>

define void @direct(%T432* %loadaddr, %T432* %loadaddr2, %T432* %storeaddr) {

  %v0 = load %T432, %T432* %loadaddr

  %v1 = load %T432, %T432* %loadaddr2

  %r3 = mul %T432 %v0, %v1 


  store %T432 %r3, %T432* %storeaddr

  ret void
}

define void @ups1632(%T416* %loadaddr, %T416* %loadaddr2, %T432* %storeaddr) {

  %v0 = load %T416, %T416* %loadaddr

  %v1 = load %T416, %T416* %loadaddr2

  %r1 = sext %T416 %v0 to %T432
  %r2 = sext %T416 %v1 to %T432

  %r3 = mul %T432 %r1, %r2 


  store %T432 %r3, %T432* %storeaddr

  ret void
}

define void @upu1632(%T416* %loadaddr, %T416* %loadaddr2, %T432* %storeaddr) {

  %v0 = load %T416, %T416* %loadaddr

  %v1 = load %T416, %T416* %loadaddr2

  %r1 = zext %T416 %v0 to %T432
  %r2 = zext %T416 %v1 to %T432

  %r3 = mul %T432 %r1, %r2 


  store %T432 %r3, %T432* %storeaddr

  ret void
}

define void @ups3264(%T232* %loadaddr, %T232* %loadaddr2, %T264* %storeaddr) {

  %v0 = load %T232, %T232* %loadaddr

  %v1 = load %T232, %T232* %loadaddr2

  %r3 = mul %T232 %v0, %v1 


  %st = sext %T232 %r3 to %T264


  store %T264 %st, %T264* %storeaddr

  ret void
}

define void @upu3264(%T232* %loadaddr, %T232* %loadaddr2, %T264* %storeaddr) {

  %v0 = load %T232, %T232* %loadaddr

  %v1 = load %T232, %T232* %loadaddr2

  %r3 = mul %T232 %v0, %v1 


  %st = zext %T232 %r3 to %T264


  store %T264 %st, %T264* %storeaddr

  ret void
}

define void @dn3216(%T432* %loadaddr, %T432* %loadaddr2, %T416* %storeaddr) {

  %v0 = load %T432, %T432* %loadaddr

  %v1 = load %T432, %T432* %loadaddr2

  %r3 = mul %T432 %v0, %v1 


  %st = trunc %T432 %r3 to %T416


  store %T416 %st, %T416* %storeaddr

  ret void
}
