

@var8 = global i8 0
@var16 = global i16 0
@var32 = global i32 0
@var64 = global i64 0

define void @addsub_i8rhs() minsize {

    %val8_tmp = load i8, i8* @var8
    %lhs32 = load i32, i32* @var32
    %lhs64 = load i64, i64* @var64

    
    %val8 = add i8 %val8_tmp, 123



    %rhs32_zext = zext i8 %val8 to i32
    %res32_zext = add i32 %lhs32, %rhs32_zext
    store volatile i32 %res32_zext, i32* @var32


   %rhs32_zext_shift = shl i32 %rhs32_zext, 3
   %res32_zext_shift = add i32 %lhs32, %rhs32_zext_shift
   store volatile i32 %res32_zext_shift, i32* @var32




    %rhs64_zext = zext i8 %val8 to i64
    %res64_zext = add i64 %lhs64, %rhs64_zext
    store volatile i64 %res64_zext, i64* @var64


   %rhs64_zext_shift = shl i64 %rhs64_zext, 1
   %res64_zext_shift = add i64 %lhs64, %rhs64_zext_shift
   store volatile i64 %res64_zext_shift, i64* @var64



    %rhs32_sext = sext i8 %val8 to i32
    %res32_sext = add i32 %lhs32, %rhs32_sext
    store volatile i32 %res32_sext, i32* @var32


   %rhs32_sext_shift = shl i32 %rhs32_sext, 1
   %res32_sext_shift = add i32 %lhs32, %rhs32_sext_shift
   store volatile i32 %res32_sext_shift, i32* @var32



    %rhs64_sext = sext i8 %val8 to i64
    %res64_sext = add i64 %lhs64, %rhs64_sext
    store volatile i64 %res64_sext, i64* @var64


   %rhs64_sext_shift = shl i64 %rhs64_sext, 4
   %res64_sext_shift = add i64 %lhs64, %rhs64_sext_shift
   store volatile i64 %res64_sext_shift, i64* @var64




    %tst = icmp slt i32 %lhs32, %rhs32_zext
    br i1 %tst, label %end, label %test2


test2:
    %cmp_sext = sext i8 %val8 to i64
    %tst2 = icmp eq i64 %lhs64, %cmp_sext
    br i1 %tst2, label %other, label %end


other:
    store volatile i32 %lhs32, i32* @var32
    ret void

end:
    ret void
}

define void @sub_i8rhs() minsize {

    %val8_tmp = load i8, i8* @var8
    %lhs32 = load i32, i32* @var32
    %lhs64 = load i64, i64* @var64

    
    %val8 = add i8 %val8_tmp, 123



    %rhs32_zext = zext i8 %val8 to i32
    %res32_zext = sub i32 %lhs32, %rhs32_zext
    store volatile i32 %res32_zext, i32* @var32


   %rhs32_zext_shift = shl i32 %rhs32_zext, 3
   %res32_zext_shift = sub i32 %lhs32, %rhs32_zext_shift
   store volatile i32 %res32_zext_shift, i32* @var32




    %rhs64_zext = zext i8 %val8 to i64
    %res64_zext = sub i64 %lhs64, %rhs64_zext
    store volatile i64 %res64_zext, i64* @var64


   %rhs64_zext_shift = shl i64 %rhs64_zext, 1
   %res64_zext_shift = sub i64 %lhs64, %rhs64_zext_shift
   store volatile i64 %res64_zext_shift, i64* @var64



    %rhs32_sext = sext i8 %val8 to i32
    %res32_sext = sub i32 %lhs32, %rhs32_sext
    store volatile i32 %res32_sext, i32* @var32


   %rhs32_sext_shift = shl i32 %rhs32_sext, 1
   %res32_sext_shift = sub i32 %lhs32, %rhs32_sext_shift
   store volatile i32 %res32_sext_shift, i32* @var32



    %rhs64_sext = sext i8 %val8 to i64
    %res64_sext = sub i64 %lhs64, %rhs64_sext
    store volatile i64 %res64_sext, i64* @var64


   %rhs64_sext_shift = shl i64 %rhs64_sext, 4
   %res64_sext_shift = sub i64 %lhs64, %rhs64_sext_shift
   store volatile i64 %res64_sext_shift, i64* @var64


    ret void
}

define void @addsub_i16rhs() minsize {

    %val16_tmp = load i16, i16* @var16
    %lhs32 = load i32, i32* @var32
    %lhs64 = load i64, i64* @var64

    
    %val16 = add i16 %val16_tmp, 123



    %rhs32_zext = zext i16 %val16 to i32
    %res32_zext = add i32 %lhs32, %rhs32_zext
    store volatile i32 %res32_zext, i32* @var32


   %rhs32_zext_shift = shl i32 %rhs32_zext, 3
   %res32_zext_shift = add i32 %lhs32, %rhs32_zext_shift
   store volatile i32 %res32_zext_shift, i32* @var32




    %rhs64_zext = zext i16 %val16 to i64
    %res64_zext = add i64 %lhs64, %rhs64_zext
    store volatile i64 %res64_zext, i64* @var64


   %rhs64_zext_shift = shl i64 %rhs64_zext, 1
   %res64_zext_shift = add i64 %lhs64, %rhs64_zext_shift
   store volatile i64 %res64_zext_shift, i64* @var64



    %rhs32_sext = sext i16 %val16 to i32
    %res32_sext = add i32 %lhs32, %rhs32_sext
    store volatile i32 %res32_sext, i32* @var32


   %rhs32_sext_shift = shl i32 %rhs32_sext, 1
   %res32_sext_shift = add i32 %lhs32, %rhs32_sext_shift
   store volatile i32 %res32_sext_shift, i32* @var32



    %rhs64_sext = sext i16 %val16 to i64
    %res64_sext = add i64 %lhs64, %rhs64_sext
    store volatile i64 %res64_sext, i64* @var64


   %rhs64_sext_shift = shl i64 %rhs64_sext, 4
   %res64_sext_shift = add i64 %lhs64, %rhs64_sext_shift
   store volatile i64 %res64_sext_shift, i64* @var64




    %tst = icmp slt i32 %lhs32, %rhs32_zext
    br i1 %tst, label %end, label %test2


test2:
    %cmp_sext = sext i16 %val16 to i64
    %tst2 = icmp eq i64 %lhs64, %cmp_sext
    br i1 %tst2, label %other, label %end


other:
    store volatile i32 %lhs32, i32* @var32
    ret void

end:
    ret void
}

define void @sub_i16rhs() minsize {

    %val16_tmp = load i16, i16* @var16
    %lhs32 = load i32, i32* @var32
    %lhs64 = load i64, i64* @var64

    
    %val16 = add i16 %val16_tmp, 123



    %rhs32_zext = zext i16 %val16 to i32
    %res32_zext = sub i32 %lhs32, %rhs32_zext
    store volatile i32 %res32_zext, i32* @var32


   %rhs32_zext_shift = shl i32 %rhs32_zext, 3
   %res32_zext_shift = sub i32 %lhs32, %rhs32_zext_shift
   store volatile i32 %res32_zext_shift, i32* @var32




    %rhs64_zext = zext i16 %val16 to i64
    %res64_zext = sub i64 %lhs64, %rhs64_zext
    store volatile i64 %res64_zext, i64* @var64


   %rhs64_zext_shift = shl i64 %rhs64_zext, 1
   %res64_zext_shift = sub i64 %lhs64, %rhs64_zext_shift
   store volatile i64 %res64_zext_shift, i64* @var64



    %rhs32_sext = sext i16 %val16 to i32
    %res32_sext = sub i32 %lhs32, %rhs32_sext
    store volatile i32 %res32_sext, i32* @var32


   %rhs32_sext_shift = shl i32 %rhs32_sext, 1
   %res32_sext_shift = sub i32 %lhs32, %rhs32_sext_shift
   store volatile i32 %res32_sext_shift, i32* @var32



    %rhs64_sext = sext i16 %val16 to i64
    %res64_sext = sub i64 %lhs64, %rhs64_sext
    store volatile i64 %res64_sext, i64* @var64


   %rhs64_sext_shift = shl i64 %rhs64_sext, 4
   %res64_sext_shift = sub i64 %lhs64, %rhs64_sext_shift
   store volatile i64 %res64_sext_shift, i64* @var64


    ret void
}




define void @addsub_i32rhs() minsize {

    %val32_tmp = load i32, i32* @var32
    %lhs64 = load i64, i64* @var64

    %val32 = add i32 %val32_tmp, 123

    %rhs64_zext = zext i32 %val32 to i64
    %res64_zext = add i64 %lhs64, %rhs64_zext
    store volatile i64 %res64_zext, i64* @var64


    %rhs64_zext_shift = shl i64 %rhs64_zext, 2
    %res64_zext_shift = add i64 %lhs64, %rhs64_zext_shift
    store volatile i64 %res64_zext_shift, i64* @var64


    %rhs64_sext = sext i32 %val32 to i64
    %res64_sext = add i64 %lhs64, %rhs64_sext
    store volatile i64 %res64_sext, i64* @var64


    %rhs64_sext_shift = shl i64 %rhs64_sext, 2
    %res64_sext_shift = add i64 %lhs64, %rhs64_sext_shift
    store volatile i64 %res64_sext_shift, i64* @var64


    ret void
}

define void @sub_i32rhs() minsize {

    %val32_tmp = load i32, i32* @var32
    %lhs64 = load i64, i64* @var64

    %val32 = add i32 %val32_tmp, 123

    %rhs64_zext = zext i32 %val32 to i64
    %res64_zext = sub i64 %lhs64, %rhs64_zext
    store volatile i64 %res64_zext, i64* @var64


    %rhs64_zext_shift = shl i64 %rhs64_zext, 2
    %res64_zext_shift = sub i64 %lhs64, %rhs64_zext_shift
    store volatile i64 %res64_zext_shift, i64* @var64


    %rhs64_sext = sext i32 %val32 to i64
    %res64_sext = sub i64 %lhs64, %rhs64_sext
    store volatile i64 %res64_sext, i64* @var64


    %rhs64_sext_shift = shl i64 %rhs64_sext, 2
    %res64_sext_shift = sub i64 %lhs64, %rhs64_sext_shift
    store volatile i64 %res64_sext_shift, i64* @var64


    ret void
}
