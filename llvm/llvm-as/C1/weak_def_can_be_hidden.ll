





@v1 = linkonce_odr constant i32 32






define i32 @f1() {
  %x = load i32 , i32 * @v1
  ret i32 %x
}

@v2 = linkonce_odr constant i32 32






define i32* @f2() {
  ret i32* @v2
}

@v3 = linkonce_odr unnamed_addr global i32 32






define i32* @f3() {
  ret i32* @v3
}

@v4 = linkonce_odr global i32 32






define i32 @f4() {
  %x = load i32 , i32 * @v4
  ret i32 %x
}
