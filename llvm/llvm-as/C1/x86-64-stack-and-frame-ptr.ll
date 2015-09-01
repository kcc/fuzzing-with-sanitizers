






















define void @foo(i32* %a) #0 {
entry:
  %a.addr = alloca i32*, align 4
  %b = alloca i32*, align 4
  store i32* %a, i32** %a.addr, align 4
  ret void
}

attributes #0 = { nounwind uwtable "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf"}


