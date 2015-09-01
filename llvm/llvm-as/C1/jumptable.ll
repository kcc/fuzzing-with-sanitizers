

target datalayout = "e-p:16:16:16-i8:8:8-i16:16:16-i32:16:32-n8:16"
target triple = "msp430---elf"


define i16 @test(i16 %i) #0 {
entry:

  %retval = alloca i16, align 2
  %i.addr = alloca i16, align 2
  store i16 %i, i16* %i.addr, align 2
  %0 = load i16, i16* %i.addr, align 2



  switch i16 %0, label %sw.default [
    i16 0, label %sw.bb
    i16 1, label %sw.bb1
    i16 2, label %sw.bb2
    i16 3, label %sw.bb3
  ]

sw.bb:                                            
  store i16 0, i16* %retval
  br label %return

sw.bb1:                                           
  store i16 1, i16* %retval
  br label %return

sw.bb2:                                           
  store i16 2, i16* %retval
  br label %return

sw.bb3:                                           
  store i16 3, i16* %retval
  br label %return

sw.default:                                       
  store i16 2, i16* %retval
  br label %return

return:                                           
  %1 = load i16, i16* %retval
  ret i16 %1

}






