




declare void @foo()



define i32 @f1(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = add i32 %a, 1000000
  %cmp = icmp eq i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f2(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = add i32 %a, 1000000
  %cmp = icmp ne i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f3(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = add i32 %a, 1000000
  %cmp = icmp slt i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f4(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = add i32 %a, 1000000
  %cmp = icmp sle i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f5(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = add i32 %a, 1000000
  %cmp = icmp sgt i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f6(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = add i32 %a, 1000000
  %cmp = icmp sge i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f7(i32 %a, i32 %b, i32 *%dest) {




entry:
  %cur = load i32 , i32 *%dest
  %res = sub i32 %a, %cur
  %cmp = icmp ne i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f8(i32 %a, i32 %b, i32 *%dest) {




entry:
  %cur = load i32 , i32 *%dest
  %res = sub i32 %a, %cur
  %cmp = icmp slt i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}



define i32 @f9(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = and i32 %a, %b
  %cmp = icmp ne i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f10(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = and i32 %a, %b
  %cmp = icmp slt i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}



define i32 @f11(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = and i32 %a, 100000001
  %cmp = icmp ne i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}



define i32 @f12(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = and i32 %a, -100
  %cmp = icmp ne i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f13(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = ashr i32 %a, %b
  %cmp = icmp eq i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f14(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = ashr i32 %a, %b
  %cmp = icmp ne i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f15(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = ashr i32 %a, %b
  %cmp = icmp slt i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f16(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = ashr i32 %a, %b
  %cmp = icmp sle i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f17(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = ashr i32 %a, %b
  %cmp = icmp sgt i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f18(i32 %a, i32 %b, i32 *%dest) {




entry:
  %res = ashr i32 %a, %b
  %cmp = icmp sge i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}



define i64 @f19(i64 %a, i64 %b, i64 *%dest) {




entry:
  %res = and i64 %b, -2
  %cmp = icmp eq i64 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 %b, i64 *%dest
  br label %exit

exit:
  ret i64 %res
}


define i64 @f20(i64 %a, i64 %b, i64 *%dest) {




entry:
  %res = and i64 %b, -2
  %cmp = icmp slt i64 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 %b, i64 *%dest
  br label %exit

exit:
  ret i64 %res
}



define i32 @f21(i32 %a, i32 %b, i32 *%dest) {







entry:
  %add = add i32 %a, 1000000
  %res = call i32 asm "blah $0", "=r,0" (i32 %add)
  %cmp = icmp eq i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f22(i32 %a, i32 %b, i32 *%dest) {







entry:
  %add = add i32 %a, 1000000
  %res = call i32 asm "blah $0", "=r,0,~{cc}" (i32 %add)
  %cmp = icmp eq i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f23(i32 %a, i32 %b, i32 *%dest1, i32 *%dest2) {





entry:
  %res = add i32 %a, 1000000
  store i32 %res, i32 *%dest1
  %cmp = icmp ne i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest2
  br label %exit

exit:
  ret i32 %res
}


define void @f24(i32 *%ptr) {





entry:
  %val = load i32 , i32 *%ptr
  %xor = xor i32 %val, 1
  %add = add i32 %xor, 1000000
  call void @foo()
  %cmp = icmp ne i32 %add, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %add, i32 *%ptr
  br label %exit

exit:
  ret void
}


define void @f25(i32 %a, i32 *%ptr) {







entry:
  %add = add i32 %a, 1000000
  call void asm sideeffect "blah", "r"(i32 %add)
  %cmp = icmp ne i32 %add, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %add, i32 *%ptr
  br label %exit

exit:
  ret void
}


define void @f26(i32 %a, i32 *%ptr) {







entry:
  %add = add i32 %a, 1000000
  call void asm sideeffect "blah", "r,~{cc}"(i32 %add)
  %cmp = icmp ne i32 %add, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %add, i32 *%ptr
  br label %exit

exit:
  ret void
}



define i32 @f27(i32 %a, i32 %b, i32 *%dest1, i32 *%dest2) {






entry:
  %add = add i32 %a, 1000000
  %sub = sub i32 %b, %add
  store i32 %sub, i32 *%dest1
  %cmp = icmp eq i32 %add, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %sub, i32 *%dest2
  br label %exit

exit:
  ret i32 %add
}


define void @f28(i64 %a, i64 *%dest) {




entry:
  %ptr = inttoptr i64 %a to i8 *
  %val = load i8 , i8 *%ptr
  %xor = xor i8 %val, 15
  store i8 %xor, i8 *%ptr
  %cmp = icmp eq i64 %a, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 %a, i64 *%dest
  br label %exit

exit:
  ret void
}


define i32 @f29(i64 %base, i64 %index, i32 *%dest) {




entry:
  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i32 *
  %res = load i32 , i32 *%ptr
  %cmp = icmp sle i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %res, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i32 @f30(i64 %base, i64 %index, i32 *%dest) {




entry:
  %add1 = add i64 %base, %index
  %add2 = add i64 %add1, 100000
  %ptr = inttoptr i64 %add2 to i32 *
  %res = load i32 , i32 *%ptr
  %cmp = icmp sle i32 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %res, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i64 @f31(i64 %base, i64 %index, i64 *%dest) {




entry:
  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i64 *
  %res = load i64 , i64 *%ptr
  %cmp = icmp sge i64 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 %res, i64 *%dest
  br label %exit

exit:
  ret i64 %res
}


define i64 @f32(i64 %base, i64 %index, i64 *%dest) {




entry:
  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i32 *
  %val = load i32 , i32 *%ptr
  %res = sext i32 %val to i64
  %cmp = icmp sgt i64 %res, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 %res, i64 *%dest
  br label %exit

exit:
  ret i64 %res
}


define i32 @f33(i32 %dummy, i32 %val, i32 *%dest) {







entry:
  call void asm sideeffect "blah $0", "{r2}"(i32 %val)
  %cmp = icmp slt i32 %val, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %val, i32 *%dest
  br label %exit

exit:
  ret i32 %val
}


define i64 @f34(i64 %dummy, i64 %val, i64 *%dest) {







entry:
  call void asm sideeffect "blah $0", "{r2}"(i64 %val)
  %cmp = icmp sgt i64 %val, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 %val, i64 *%dest
  br label %exit

exit:
  ret i64 %val
}


define i64 @f35(i64 %dummy, i32 %val, i64 *%dest) {







entry:
  %ext = sext i32 %val to i64
  call void asm sideeffect "blah $0", "{r2}"(i64 %ext)
  %cmp = icmp sgt i64 %ext, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 %ext, i64 *%dest
  br label %exit

exit:
  ret i64 %ext
}



define i32 @f36(i32 %val, i32 %dummy, i32 *%dest) {







entry:
  call void asm sideeffect "blah $0", "{r3}"(i32 %val)
  %cmp = icmp slt i32 %val, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %val, i32 *%dest
  br label %exit

exit:
  ret i32 %val
}



define i64 @f37(i64 %val, i64 %dummy, i64 *%dest) {







entry:
  call void asm sideeffect "blah $0", "{r3}"(i64 %val)
  %cmp = icmp slt i64 %val, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 %val, i64 *%dest
  br label %exit

exit:
  ret i64 %val
}



define i32 @f38(i32 %val, i64 %dummy, i32 *%dest) {







entry:
  %ext = sext i32 %val to i64
  call void asm sideeffect "blah $0", "{r3}"(i64 %ext)
  %cmp = icmp slt i32 %val, 0
  br i1 %cmp, label %exit, label %store

store:
  store i32 %val, i32 *%dest
  br label %exit

exit:
  ret i32 %val
}


define i64 @f39(i64 %dummy, i64 %a, i64 *%dest) {







entry:
  %val = trunc i64 %a to i32
  %ext = sext i32 %val to i64
  call void asm sideeffect "blah $0", "{r2}"(i64 %ext)
  %cmp = icmp sgt i64 %ext, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 %ext, i64 *%dest
  br label %exit

exit:
  ret i64 %ext
}


define i64 @f40(i64 %dummy, i64 %a, i64 *%dest) {







entry:
  %shl = shl i64 %a, 32
  %ext = ashr i64 %shl, 32
  call void asm sideeffect "blah $0", "{r2}"(i64 %ext)
  %cmp = icmp sgt i64 %shl, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 %ext, i64 *%dest
  br label %exit

exit:
  ret i64 %ext
}


define i32 @f41(i32 %a, i32 %b, i32 *%dest) {




entry:
  %cur = load i32 , i32 *%dest
  %res = sub i32 %a, %cur
  %cmp = icmp ne i32 %a, %cur
  br i1 %cmp, label %exit, label %store

store:
  store i32 %b, i32 *%dest
  br label %exit

exit:
  ret i32 %res
}


define i64 @f42(i64 %base, i64 %index, i64 *%dest) {




entry:
  %add = add i64 %base, %index
  %ptr = inttoptr i64 %add to i32 *
  %val = load i32 , i32 *%ptr
  %res = sext i32 %val to i64
  %cmp = icmp sgt i32 %val, 0
  br i1 %cmp, label %exit, label %store

store:
  store i64 %res, i64 *%dest
  br label %exit

exit:
  ret i64 %res
}
