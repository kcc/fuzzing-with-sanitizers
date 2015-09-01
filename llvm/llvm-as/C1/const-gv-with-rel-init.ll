

define void @f() {
  ret void
}

@ptr = constant void ()* @f, section ".CRT$XLB", align 8


@weak_array = weak_odr unnamed_addr constant [1 x i8*] [i8* bitcast (void ()* @f to i8*)]

