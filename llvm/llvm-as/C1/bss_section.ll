

%struct.foo = type { i32, i32 }

@"\01?thingy@@3Ufoo@@B" = global %struct.foo zeroinitializer, align 4


$thingy_linkonce = comdat any
@thingy_linkonce = linkonce_odr global %struct.foo zeroinitializer, comdat, align 4

