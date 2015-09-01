


target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"



define void @test_inlineasm_globaladdress() {
  call void asm sideeffect "b $0", "i"(void ()* @test_symbol)
  ret void
}



define void @test_inlineasm_globaladdress_offset() {
  call void asm sideeffect "b $0", "i"(void ()* bitcast (i8* getelementptr (i8, i8* bitcast (void ()* @test_symbol to i8*), i64 4) to void ()*))
  ret void
}

declare void @test_symbol()
