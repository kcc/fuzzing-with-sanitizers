
target triple = "x86_64-pc-win32"

declare <8 x float> @foo(<8 x float>, i32)

define <8 x float> @test1(<8 x float> %x, <8 x float> %y) nounwind uwtable readnone ssp {
entry:





  %x1 = fadd  <8 x float>  %x, %y
  %call = call  <8 x float> @foo(<8 x float> %x1, i32 1) nounwind
  %y1 = fsub  <8 x float>  %call, %y
  ret <8 x float> %y1
}

