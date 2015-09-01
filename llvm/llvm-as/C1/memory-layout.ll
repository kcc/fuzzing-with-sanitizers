




















@byte = global i8 1, align 1
@halfword = global i16 258, align 1
@word = global i32 16909060, align 1
@float = global float 1.0, align 1
@dword = global i64 283686952306183, align 1
@double = global double 1.0, align 1
@pointer = global i8* @byte










































@byte_array = global [2 x i8] [i8 1, i8 2], align 1
@halfword_array = global [2 x i16] [i16 1, i16 2], align 1
@word_array = global [2 x i32] [i32 1, i32 2], align 1
@float_array = global [2 x float] [float 1.0, float 2.0], align 1
@dword_array = global [2 x i64] [i64 1, i64 2], align 1
@double_array = global [2 x double] [double 1.0, double 2.0], align 1
@pointer_array = global [2 x i8*] [i8* @byte, i8* @byte]


















































%mixed = type { i8, double, i16 }
@mixed = global %mixed { i8 1, double 1.0, i16 515 }, align 1











