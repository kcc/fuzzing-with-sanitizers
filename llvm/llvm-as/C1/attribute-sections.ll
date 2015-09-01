

declare i32 @foo()
@G0 = global i32 ()* @foo, section ".init_array"




@G1 = global i32 ()* @foo, section ".fini_array"




@G2 = global i32 ()* @foo, section ".preinit_array"




