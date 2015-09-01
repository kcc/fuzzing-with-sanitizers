












%class.C = type { i8 }
%class.D = type { i8 }

@c1 = global %class.C zeroinitializer, align 1
@d1 = global %class.D zeroinitializer, align 1
@llvm.global_ctors = appending global [2 x { i32, void ()* }] [{ i32, void ()* } { i32 101, void ()* @_GLOBAL__I_000101 }, { i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }]

define linkonce_odr void @_ZN1CC1Ev(%class.C* nocapture %this) {
entry:
  ret void
}

define linkonce_odr void @_ZN1DC1Ev(%class.D* nocapture %this) {
entry:
  ret void
}

define linkonce_odr void @_ZN1DC2Ev(%class.D* nocapture %this) {
entry:
  ret void
}

define linkonce_odr void @_ZN1CC2Ev(%class.C* nocapture %this) {
entry:
  ret void
}

define internal void @_GLOBAL__I_000101() nounwind readnone {
entry:
  ret void
}

define internal void @_GLOBAL__I_a() nounwind readnone {
entry:
  ret void
}


