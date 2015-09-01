
define i64 @foo(i1 %z, i192* %p, i192* %q)
{




entry:
  %data1 = load i192, i192* %p, align 8
  %lshr1 = lshr i192 %data1, 128
  %val1  = trunc i192 %lshr1 to i64
  br i1 %z, label %End, label %L_val2



L_val2:
  %data2 = load i192, i192* %q, align 8
  %lshr2 = lshr i192 %data2, 128
  %val2  = trunc i192 %lshr2 to i64
  br label %End

End:
  %p1 = phi i64 [%val1,%entry], [%val2,%L_val2]
  ret i64 %p1
}
