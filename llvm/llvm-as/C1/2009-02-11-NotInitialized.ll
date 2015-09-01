




define i32 @use(i8* %x) nounwind readonly {

  %1 = tail call i64 @strlen(i8* %x) nounwind readonly
  %2 = trunc i64 %1 to i32
  ret i32 %2
}

declare i64 @strlen(i8*) nounwind readonly

