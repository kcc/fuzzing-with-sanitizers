


@a = common global i32 0, align 4
@b = common global i32 0, align 4






define i32 @test1() {
entry:
  %0 = load i32, i32* @a, align 4
  %conv = sitofp i32 %0 to float
  %sub = fsub fast float %conv, undef
  %sub1 = fadd fast float %sub, -1.000000e+00
  %conv2 = fptosi float %sub1 to i32
  store i32 %conv2, i32* @b, align 4
  ret i32 undef
}
