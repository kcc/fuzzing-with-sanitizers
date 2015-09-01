

declare void @use_nothrow(i64 %a) nounwind
declare void @use(i64 %a)

define void @nothrow(i64 %x, i64 %y, i1* %cond) {





entry:
  br label %loop

loop:                                         
  %div = udiv i64 %x, %y
  call void @use_nothrow(i64 %div)
  br label %loop
}

define void @throw_header(i64 %x, i64 %y, i1* %cond) {




entry:
  br label %loop

loop:                                         
  %div = udiv i64 %x, %y
  call void @use(i64 %div)
  br label %loop
}



define void @nothrow_header(i64 %x, i64 %y, i1 %cond) {





entry:
  br label %loop
loop:                                         
  %div = udiv i64 %x, %y
  br i1 %cond, label %loop-if, label %exit
loop-if:
  call void @use(i64 %div)
  br label %loop
exit:
  ret void
}

define void @nothrow_header_neg(i64 %x, i64 %y, i1 %cond) {





entry:
  br label %loop
loop:                                         
  br label %loop-if
loop-if:
  %div = udiv i64 %x, %y
  call void @use(i64 %div)
  br label %loop
}
