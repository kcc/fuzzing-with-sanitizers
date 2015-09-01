



@g = global i32 0


define void @f1(i64 %a) {







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


define void @f2(i64 %a) {







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
