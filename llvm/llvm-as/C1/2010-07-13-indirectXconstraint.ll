



%0 = type { [12 x i16] }
%union..0anon = type { [3 x <1 x i64>] }

@gsm_H.1466 = internal constant %0 { [12 x i16] [i16 -134, i16 -374, i16 0, i16 2054, i16 5741, i16 8192, i16 5741, i16 2054, i16 0, i16 -374, i16 -134, i16 0] }, align 8 

define void @weighting_filter() nounwind ssp {
entry:

  call void asm sideeffect "leaq $0,%rax
  br label %return

return:                                           
  ret void
}
