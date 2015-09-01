





define float @test1(float %x) {
  %t1 = fmul fast float %x, %x
  %t2 = fadd fast float %t1, %x
  ret float %t2


}


define float @test2(float %x) {
  %t1 = fadd fast float %x, %x
  %t2 = fadd fast float %t1, %x
  ret float %t2



}


define float @test3(float %x) {
  %t1 = fadd fast float %x, %x
  %t2 = fadd fast float %t1, %x
  ret float %t2



}


define float @test4(float %x, float %y) {
  %t1 = fadd fast float %x, %y
  %t2 = fadd fast float %t1, %x
  ret float %t2


}





define float @test5() {
  %mul.i.i151 = fmul <4 x float> zeroinitializer, zeroinitializer
  %vecext.i8.i152 = extractelement <4 x float> %mul.i.i151, i32 1
  %vecext1.i9.i153 = extractelement <4 x float> %mul.i.i151, i32 0
  %add.i10.i154 = fadd float %vecext1.i9.i153, %vecext.i8.i152
  %vecext.i7.i155 = extractelement <4 x float> %mul.i.i151, i32 2
  %add.i.i156 = fadd float %vecext.i7.i155, %add.i10.i154
  ret float %add.i.i156
}
