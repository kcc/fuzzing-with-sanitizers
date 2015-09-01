

















@byte = global i8 zeroinitializer
@word = global i32 zeroinitializer
@dword = global i64 zeroinitializer
@float = global float zeroinitializer
@double = global double zeroinitializer

define i8 @reti8() nounwind {
entry:
        %0 = load volatile i8, i8* @byte
        ret i8 %0
}









define i32 @reti32() nounwind {
entry:
        %0 = load volatile i32, i32* @word
        ret i32 %0
}









define i64 @reti64() nounwind {
entry:
        %0 = load volatile i64, i64* @dword
        ret i64 %0
}









