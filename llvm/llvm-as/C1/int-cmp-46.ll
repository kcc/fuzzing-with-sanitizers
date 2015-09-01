



@g = global i32 0


define void @f1(i32 %a) {




entry:
  %and = and i32 %a, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f2(i32 %a) {




entry:
  %and = and i32 %a, 65535
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f3(i32 %a) {




entry:
  %and = and i32 %a, 65536
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f4(i32 %a) {



entry:
  %and = and i32 %a, 4294901759
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f5(i32 %a) {




entry:
  %and = and i32 %a, 4294901760
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}



define void @f6(i32 %a) {




entry:
  %and = and i32 %a, 240
  %cmp = icmp slt i32 %and, 16
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f7(i32 %a) {




entry:
  %and = and i32 %a, 240
  %cmp = icmp sle i32 %and, 15
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}



define void @f8(i32 %a) {




entry:
  %and = and i32 %a, 240
  %cmp = icmp uge i32 %and, 16
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f9(i32 %a) {




entry:
  %and = and i32 %a, 240
  %cmp = icmp ugt i32 %and, 15
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}



define void @f10(i32 %a) {




entry:
  %and = and i32 %a, 35
  %cmp = icmp ult i32 %and, 8
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f11(i32 %a) {




entry:
  %and = and i32 %a, 35
  %cmp = icmp ule i32 %and, 31
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}



define void @f12(i32 %a) {




entry:
  %and = and i32 %a, 140
  %cmp = icmp uge i32 %and, 128
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f13(i32 %a) {




entry:
  %and = and i32 %a, 140
  %cmp = icmp ugt i32 %and, 126
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f14(i32 %a) {




entry:
  %and = and i32 %a, 101
  %cmp = icmp eq i32 %and, 101
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f15(i32 %a) {




entry:
  %and = and i32 %a, 65519
  %cmp = icmp ne i32 %and, 65519
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}



define void @f16(i32 %a) {




entry:
  %and = and i32 %a, 130
  %cmp = icmp ult i32 %and, 129
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f17(i32 %a) {




entry:
  %and = and i32 %a, 130
  %cmp = icmp ule i32 %and, 128
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}



define void @f18(i32 %a) {




entry:
  %and = and i32 %a, 194
  %cmp = icmp uge i32 %and, 193
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f19(i32 %a) {




entry:
  %and = and i32 %a, 194
  %cmp = icmp ugt i32 %and, 192
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}



define void @f20(i32 %a) {




entry:
  %and = and i32 %a, 20
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}



define void @f21(i32 %a) {




entry:
  %and = and i32 %a, 20
  %cmp = icmp ne i32 %and, 4
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}



define void @f22(i32 %a) {




entry:
  %and = and i32 %a, 20
  %cmp = icmp eq i32 %and, 16
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}



define void @f23(i32 %a) {




entry:
  %and = and i32 %a, 20
  %cmp = icmp ne i32 %and, 16
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f24(i32 %a) {




entry:
  %shl = shl i32 %a, 12
  %and = and i32 %shl, 1044480
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}


define void @f25(i32 %a) {




entry:
  %shr = lshr i32 %a, 25
  %and = and i32 %shr, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 1, i32 *@g
  br label %exit

exit:
  ret void
}
