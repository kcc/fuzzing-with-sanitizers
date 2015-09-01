

target triple = "powerpc64-unknown-linux-gnu"

define double @test() {
  %1 = fptrunc ppc_fp128 0xM818F2887B9295809800000000032D000 to double
  ret double %1
}



