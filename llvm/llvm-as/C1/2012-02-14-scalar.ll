
target triple = "x86_64-unknown-linux-gnu"

define void @autogen_28112_5000() {
BB:
  %S17 = icmp sgt <1 x i64> undef, undef
  %E19 = extractelement <1 x i1> %S17, i32 0
  br label %CF

CF:                                               
  %S23 = select i1 %E19, i8 undef, i8 undef
  br label %CF
}
