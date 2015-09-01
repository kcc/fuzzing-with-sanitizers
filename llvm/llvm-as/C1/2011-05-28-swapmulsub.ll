

target triple = "x86_64-apple-macosx10.6.6"

define zeroext i16 @foo1(i32 %on_off) nounwind uwtable ssp {
entry:
  %on_off.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %on_off, i32* %on_off.addr, align 4
  %tmp = load i32, i32* %on_off.addr, align 4
  %sub = sub i32 1, %tmp

  %mul = mul i32 %sub, -2


  store i32 %mul, i32* %a, align 4
  %tmp1 = load i32, i32* %a, align 4
  %conv = trunc i32 %tmp1 to i16
  ret i16 %conv
}

define zeroext i16 @foo2(i32 %on_off, i32 %q) nounwind uwtable ssp {
entry:
  %on_off.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %on_off, i32* %on_off.addr, align 4
  store i32 %q, i32* %q.addr, align 4
  %tmp = load i32, i32* %q.addr, align 4
  %tmp1 = load i32, i32* %on_off.addr, align 4
  %sub = sub i32 %tmp, %tmp1

  %mul = mul i32 %sub, -4


  store i32 %mul, i32* %a, align 4
  %tmp2 = load i32, i32* %a, align 4
  %conv = trunc i32 %tmp2 to i16
  ret i16 %conv
}

define zeroext i16 @foo3(i32 %on_off) nounwind uwtable ssp {
entry:
  %on_off.addr = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 %on_off, i32* %on_off.addr, align 4
  %tmp = load i32, i32* %on_off.addr, align 4
  %sub = sub i32 7, %tmp

  %mul = mul i32 %sub, -4


  store i32 %mul, i32* %a, align 4
  %tmp1 = load i32, i32* %a, align 4
  %conv = trunc i32 %tmp1 to i16
  ret i16 %conv
}
