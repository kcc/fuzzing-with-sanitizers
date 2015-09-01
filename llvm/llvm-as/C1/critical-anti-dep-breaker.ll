








@PartClass = external global i32
@NullToken = external global i64



define i32 @Part_Create(i64* %Anchor, i32 %TypeNum, i32 %F, i32 %Z, i32* %Status, i64* %PartTkn) {
  %PartObj = alloca i64*, align 8
  %Vchunk = alloca i64, align 8
  %1 = load i64, i64* @NullToken, align 4
  store i64 %1, i64* %Vchunk, align 8
  %2 = load i32, i32* @PartClass, align 4
  call i32 @Image(i64* %Anchor, i32 %2, i32 0, i32 0, i32* %Status, i64* %PartTkn, i64** %PartObj)
  call i32 @Create(i64* %Anchor)
  ret i32 %2
}

declare i32 @Image(i64*, i32, i32, i32, i32*, i64*, i64**)
declare i32 @Create(i64*)
