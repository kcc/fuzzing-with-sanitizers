




define i32 @f1() {





  %ret = call i32 asm "blah $0", "={r4},0" (i32 1)
  ret i32 %ret
}


define i64 @f2() {





  %ret = call i64 asm "blah $0", "={r4},0" (i64 1)
  ret i64 %ret
}


define float @f3() {





  %ret = call float asm "blah $0", "={f4},0" (float 0.0)
  ret float %ret
}


define double @f4() {





  %ret = call double asm "blah $0", "={f4},0" (double 0.0)
  ret double %ret
}


define void @f5(fp128 *%dest) {






  %ret = call fp128 asm "blah $0", "={f4},0" (fp128 0xL00000000000000000000000000000000)
  store fp128 %ret, fp128 *%dest
  ret void
}


define i32 @f6(i32 %in) {





  call void asm sideeffect "blah", "~{r2},~{cc}"()
  ret i32 %in
}


define float @f7(float %in) {





  call void asm sideeffect "blah", "~{f0},~{cc}"()
  ret float %in
}


define void @f8(i32 %count) {







entry:
  br label %loop

loop:
  %this = phi i32 [ %count, %entry ], [ %next, %loop ]
  call void asm sideeffect "blah $0, $1", "{r0},{r1}" (i32 0, i32 1)
  %next = sub i32 %this, 1
  %cmp = icmp ne i32 %next, 0
  br i1 %cmp, label %loop, label %exit

exit:
  ret void
}
