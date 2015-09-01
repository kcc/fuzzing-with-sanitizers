




@g = global i32 0


define void @f1(i64 %a) {




entry:
  %and = and i64 %a, 1
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f2(i64 %a) {




entry:
  %and = and i64 %a, 65535
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f3(i64 %a) {




entry:
  %and = and i64 %a, 65536
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f4(i64 %a) {



entry:
  %and = and i64 %a, 4294901759
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f5(i64 %a) {




entry:
  %and = and i64 %a, 4294901760
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f6(i64 %a) {




entry:
  %and = and i64 %a, 4294967296
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f7(i64 %a) {



entry:
  %and = and i64 %a, 4294967297
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f8(i64 %a) {




entry:
  %and = and i64 %a, 281470681743360
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f9(i64 %a) {




entry:
  %and = and i64 %a, 281474976710656
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f10(i64 %a) {




entry:
  %and = and i64 %a, 18446462598732840960
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f11(i64 %a) {




entry:
  %shl = shl i64 %a, 1
  %and = and i64 %shl, 281474976710656
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f12(i64 %a) {




entry:
  %shr = lshr i64 %a, 56
  %and = and i64 %shr, 1
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f13(i64 %a) {




entry:
  %cmp = icmp ult i64 %a, 13835058055282163712
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f14(i64 %a) {




entry:
  %cmp = icmp ule i64 %a, 13835058055282163711
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f15(i64 %a) {




entry:
  %cmp = icmp ugt i64 %a, 13835058055282163711
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f16(i64 %a) {




entry:
  %cmp = icmp uge i64 %a, 13835058055282163712
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f17(i64 %a) {






entry:
  %cmp = icmp ult i64 %a, 13834776580305453056
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f18(i64 %a) {




entry:
  %cmp = icmp ult i64 %a, 9223372036854775808
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}
