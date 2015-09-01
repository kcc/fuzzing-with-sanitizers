






define x86_64_win64cc void @bar(i32 %a, i32 %b) {














  call x86_64_sysvcc void @foo(i32 %a, i32 %b)
  ret void
}

declare x86_64_sysvcc void @foo(i32 %a, i32 %b)

