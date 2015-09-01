



define i32 @f1(i32 %x, i32 %y, i32 %op) {








entry:
  switch i32 %op, label %exit [
    i32 1, label %b.add
    i32 2, label %b.sub
    i32 3, label %b.and
    i32 4, label %b.or
    i32 5, label %b.xor
    i32 6, label %b.mul
  ]

b.add:
  %add = add i32 %x, %y
  br label %exit

b.sub:
  %sub = sub i32 %x, %y
  br label %exit

b.and:
  %and = and i32 %x, %y
  br label %exit

b.or:
  %or = or i32 %x, %y
  br label %exit

b.xor:
  %xor = xor i32 %x, %y
  br label %exit

b.mul:
  %mul = mul i32 %x, %y
  br label %exit

exit:
  %res = phi i32 [ %x,   %entry ],
                 [ %add, %b.add ],
                 [ %sub, %b.sub ],
                 [ %and, %b.and ],
                 [ %or,  %b.or ],
                 [ %xor, %b.xor ],
                 [ %mul, %b.mul ]
  ret i32 %res
}
