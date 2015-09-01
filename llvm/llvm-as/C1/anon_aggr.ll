








%tarray = type { i64, i8* }

define i8* @func1({ i64, i8* } %array, i8* %ptr) {
entry:
  %array_ptr = extractvalue {i64, i8* } %array, 1
  %cond = icmp eq i8* %array_ptr, %ptr
  br i1 %cond, label %equal, label %unequal
equal:
  ret i8* %array_ptr
unequal:
  ret i8* %ptr
}





























define i8* @func2({ i64, i8* } %array1, %tarray* byval %array2) {
entry:
  %array1_ptr = extractvalue {i64, i8* } %array1, 1
  %tmp = getelementptr inbounds %tarray, %tarray* %array2, i32 0, i32 1
  %array2_ptr = load i8*, i8** %tmp
  %cond = icmp eq i8* %array1_ptr, %array2_ptr
  br i1 %cond, label %equal, label %unequal
equal:
  ret i8* %array1_ptr
unequal:
  ret i8* %array2_ptr
}































define i8* @func3({ i64, i8* }* byval %array1, %tarray* byval %array2) {
entry:
  %tmp1 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %array1, i32 0, i32 1
  %array1_ptr = load i8*, i8** %tmp1
  %tmp2 = getelementptr inbounds %tarray, %tarray* %array2, i32 0, i32 1
  %array2_ptr = load i8*, i8** %tmp2
  %cond = icmp eq i8* %array1_ptr, %array2_ptr
  br i1 %cond, label %equal, label %unequal
equal:
  ret i8* %array1_ptr
unequal:
  ret i8* %array2_ptr
}































define i8* @func4(i64 %p1, i64 %p2, i64 %p3, i64 %p4,
                  i64 %p5, i64 %p6, i64 %p7, i64 %p8,
                  { i64, i8* } %array1, %tarray* byval %array2) {
entry:
  %array1_ptr = extractvalue {i64, i8* } %array1, 1
  %tmp = getelementptr inbounds %tarray, %tarray* %array2, i32 0, i32 1
  %array2_ptr = load i8*, i8** %tmp
  %cond = icmp eq i8* %array1_ptr, %array2_ptr
  br i1 %cond, label %equal, label %unequal
equal:
  ret i8* %array1_ptr
unequal:
  ret i8* %array2_ptr
}






























