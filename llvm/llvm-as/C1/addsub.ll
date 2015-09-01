





@var_i32 = global i32 42
@var_i64 = global i64 0


define void @add_small() {



  %val32 = load i32, i32* @var_i32
  %newval32 = add i32 %val32, 4095
  store i32 %newval32, i32* @var_i32


  %val64 = load i64, i64* @var_i64
  %newval64 = add i64 %val64, 52
  store i64 %newval64, i64* @var_i64

  ret void
}










define void @add_small_imm(i8* %p, i64* %q, i32 %b, i32* %addr) {

entry:


  %t = load i8, i8* %p
  %promoted = zext i8 %t to i64
  %zextt = zext i8 %t to i32
  %add = add nuw i32 %zextt, %b


  %add2 = add nuw i64 %promoted, 12
  store i32 %add, i32* %addr


  store i64 %add2, i64* %q
  ret void
}


define void @add_med() {



  %val32 = load i32, i32* @var_i32
  %newval32 = add i32 %val32, 14610432 
  store i32 %newval32, i32* @var_i32


  %val64 = load i64, i64* @var_i64
  %newval64 = add i64 %val64, 16773120 
  store i64 %newval64, i64* @var_i64

  ret void
}


define void @sub_small() {



  %val32 = load i32, i32* @var_i32
  %newval32 = sub i32 %val32, 4095
  store i32 %newval32, i32* @var_i32


  %val64 = load i64, i64* @var_i64
  %newval64 = sub i64 %val64, 52
  store i64 %newval64, i64* @var_i64

  ret void
}


define void @sub_med() {



  %val32 = load i32, i32* @var_i32
  %newval32 = sub i32 %val32, 14610432 
  store i32 %newval32, i32* @var_i32


  %val64 = load i64, i64* @var_i64
  %newval64 = sub i64 %val64, 16773120 
  store i64 %newval64, i64* @var_i64

  ret void
}

define void @testing() {

  %val = load i32, i32* @var_i32



  %cmp_pos_small = icmp ne i32 %val, 4095
  br i1 %cmp_pos_small, label %ret, label %test2

test2:


  %newval2 = add i32 %val, 1
  store i32 %newval2, i32* @var_i32
  %cmp_pos_big = icmp ult i32 %val, 14610432
  br i1 %cmp_pos_big, label %ret, label %test3

test3:


  %newval3 = add i32 %val, 2
  store i32 %newval3, i32* @var_i32
  %cmp_pos_slt = icmp slt i32 %val, 123
  br i1 %cmp_pos_slt, label %ret, label %test4

test4:


  %newval4 = add i32 %val, 3
  store i32 %newval4, i32* @var_i32
  %cmp_pos_sgt = icmp sgt i32 %val, 321
  br i1 %cmp_pos_sgt, label %ret, label %test5

test5:


  %newval5 = add i32 %val, 4
  store i32 %newval5, i32* @var_i32
  %cmp_neg_uge = icmp sgt i32 %val, -444
  br i1 %cmp_neg_uge, label %ret, label %test6

test6:
  %newval6 = add i32 %val, 5
  store i32 %newval6, i32* @var_i32
  ret void

ret:
  ret void
}

