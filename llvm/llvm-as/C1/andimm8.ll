




define i64 @bra(i32 %zed) nounwind {
 %t1 = zext i32 %zed to i64
 %t2 = and i64  %t1, 4294967232
 ret i64 %t2
}



define void @foo(i64 %zed, i64* %x) nounwind {
  %t1 = and i64 %zed, -4
  %t2 = or i64 %t1, 2
  store i64 %t2, i64* %x, align 8
  ret void
}

define i64 @bar(i64 %zed) nounwind {

  %t1 = and i64 %zed, 42
  ret i64 %t1
}

define i64 @baz(i64 %zed) nounwind {

  %t1 = and i64 %zed, 2147483647
  ret i64 %t1
}
