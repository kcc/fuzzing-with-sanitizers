







@var8 = global i8 0
@var16 = global i16 0
@var32 = global i32 0
@var64 = global i64 0

define void @loadstore() {
    %val8 = load i8, i8* @var8
    store volatile i8 %val8, i8* @var8

    %val16 = load i16, i16* @var16
    store volatile i16 %val16, i16* @var16

    %val32 = load i32, i32* @var32
    store volatile i32 %val32, i32* @var32

    %val64 = load i64, i64* @var64
    store volatile i64 %val64, i64* @var64

    ret void
}

@globaddr = global i64* null

define void @address() {
    store i64* @var64, i64** @globaddr
    ret void
}



























