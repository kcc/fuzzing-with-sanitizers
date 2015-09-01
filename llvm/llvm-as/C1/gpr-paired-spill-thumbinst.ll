






define void @foo(i64* %addr) {
  %val1 = tail call i64 asm sideeffect "ldrexd $0, ${0:H}, [r0]", "=&r,r"(i64* %addr)
  %val2 = tail call i64 asm sideeffect "ldrexd $0, ${0:H}, [r0]", "=&r,r"(i64* %addr)
  %val3 = tail call i64 asm sideeffect "ldrexd $0, ${0:H}, [r0]", "=&r,r"(i64* %addr)
  %val4 = tail call i64 asm sideeffect "ldrexd $0, ${0:H}, [r0]", "=&r,r"(i64* %addr)
  %val5 = tail call i64 asm sideeffect "ldrexd $0, ${0:H}, [r0]", "=&r,r"(i64* %addr)
  %val6 = tail call i64 asm sideeffect "ldrexd $0, ${0:H}, [r0]", "=&r,r"(i64* %addr)
  %val7 = tail call i64 asm sideeffect "ldrexd $0, ${0:H}, [r0]", "=&r,r"(i64* %addr)

  
  



  store volatile i64 %val1, i64* %addr
  store volatile i64 %val2, i64* %addr
  store volatile i64 %val3, i64* %addr
  store volatile i64 %val4, i64* %addr
  store volatile i64 %val5, i64* %addr
  store volatile i64 %val6, i64* %addr
  store volatile i64 %val7, i64* %addr
  ret void
}
