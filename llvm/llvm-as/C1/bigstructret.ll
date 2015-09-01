

%0 = type { i32, i32, i32, i32 }
%1 = type { i1, i1, i1, i32 }







define fastcc %0 @ReturnBigStruct() nounwind readnone {
entry:
  %0 = insertvalue %0 zeroinitializer, i32 12, 0
  %1 = insertvalue %0 %0, i32 24, 1
  %2 = insertvalue %0 %1, i32 48, 2
  %3 = insertvalue %0 %2, i32 24601, 3
  ret %0 %3
}







define fastcc %1 @ReturnBigStruct2() nounwind readnone {
entry:
  %0 = insertvalue %1 zeroinitializer, i1 false, 0
  %1 = insertvalue %1 %0, i1 true, 1
  %2 = insertvalue %1 %1, i1 true, 2
  %3 = insertvalue %1 %2, i32 48, 3
  ret %1 %3
}
