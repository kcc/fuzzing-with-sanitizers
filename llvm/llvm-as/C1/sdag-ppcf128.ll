



define fastcc void @_D3std4math4sqrtFNaNbNfcZc() {
entry:
  br i1 undef, label %if, label %else

if:                                               
  store { ppc_fp128, ppc_fp128 } zeroinitializer, { ppc_fp128, ppc_fp128 }* undef
  ret void

else:                                             
  unreachable
}
