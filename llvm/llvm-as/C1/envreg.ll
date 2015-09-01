


declare i32 @llvm.nvvm.read.ptx.sreg.envreg0()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg1()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg2()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg3()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg4()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg5()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg6()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg7()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg8()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg9()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg10()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg11()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg12()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg13()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg14()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg15()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg16()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg17()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg18()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg19()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg20()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg21()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg22()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg23()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg24()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg25()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg26()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg27()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg28()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg29()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg30()
declare i32 @llvm.nvvm.read.ptx.sreg.envreg31()



define i32 @foo() {

  %val0 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg0()

  %val1 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg1()

  %val2 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg2()

  %val3 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg3()

  %val4 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg4()

  %val5 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg5()

  %val6 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg6()

  %val7 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg7()

  %val8 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg8()

  %val9 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg9()

  %val10 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg10()

  %val11 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg11()

  %val12 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg12()

  %val13 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg13()

  %val14 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg14()

  %val15 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg15()

  %val16 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg16()

  %val17 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg17()

  %val18 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg18()

  %val19 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg19()

  %val20 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg20()

  %val21 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg21()

  %val22 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg22()

  %val23 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg23()

  %val24 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg24()

  %val25 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg25()

  %val26 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg26()

  %val27 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg27()

  %val28 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg28()

  %val29 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg29()

  %val30 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg30()

  %val31 = tail call i32 @llvm.nvvm.read.ptx.sreg.envreg31()


  %ret0 = add i32 %val0, %val1
  %ret1 = add i32 %ret0, %val2
  %ret2 = add i32 %ret1, %val3
  %ret3 = add i32 %ret2, %val4
  %ret4 = add i32 %ret3, %val5
  %ret5 = add i32 %ret4, %val6
  %ret6 = add i32 %ret5, %val7
  %ret7 = add i32 %ret6, %val8
  %ret8 = add i32 %ret7, %val9
  %ret9 = add i32 %ret8, %val10
  %ret10 = add i32 %ret9, %val11
  %ret11 = add i32 %ret10, %val12
  %ret12 = add i32 %ret11, %val13
  %ret13 = add i32 %ret12, %val14
  %ret14 = add i32 %ret13, %val15
  %ret15 = add i32 %ret14, %val16
  %ret16 = add i32 %ret15, %val17
  %ret17 = add i32 %ret16, %val18
  %ret18 = add i32 %ret17, %val19
  %ret19 = add i32 %ret18, %val20
  %ret20 = add i32 %ret19, %val21
  %ret21 = add i32 %ret20, %val22
  %ret22 = add i32 %ret21, %val23
  %ret23 = add i32 %ret22, %val24
  %ret24 = add i32 %ret23, %val25
  %ret25 = add i32 %ret24, %val26
  %ret26 = add i32 %ret25, %val27
  %ret27 = add i32 %ret26, %val28
  %ret28 = add i32 %ret27, %val29
  %ret29 = add i32 %ret28, %val30
  %ret30 = add i32 %ret29, %val31

  ret i32 %ret30
}
