


@one_f = addrspace(4) global float 1.000000e+00, align 4

define float @foo() {

  %val = load float, float addrspace(4)* @one_f
  ret float %val
}
