






























define float @foo(float %x) #0 {
entry:
  %add = fadd fast float %x, %x
  %add1 = fadd fast float %add, %x
  ret float %add1
}






define float @fooWithOptnone(float %x) #1 {
entry:
  %add = fadd fast float %x, %x
  %add1 = fadd fast float %add, %x
  ret float %add1
}











@id84 = common global <16 x i32> zeroinitializer, align 64

define void @bar() #1 {
entry:
  %id83 = alloca <16 x i8>, align 16
  %0 = load <16 x i32>, <16 x i32>* @id84, align 64
  %conv = trunc <16 x i32> %0 to <16 x i8>
  store <16 x i8> %conv, <16 x i8>* %id83, align 16
  ret void
}

attributes #0 = { "unsafe-fp-math"="true" }
attributes #1 = { noinline optnone "unsafe-fp-math"="true" }
