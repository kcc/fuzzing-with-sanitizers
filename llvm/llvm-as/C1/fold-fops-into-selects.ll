

define float @test1(i1 %A) {
EntryBlock:
  %cf = select i1 %A, float 1.000000e+00, float 0.000000e+00
  %op = fsub float 1.000000e+00, %cf
  ret float %op


}

define float @test2(i1 %A, float %B) {
EntryBlock:
  %cf = select i1 %A, float 1.000000e+00, float %B
  %op = fadd float 2.000000e+00, %cf
  ret float %op



}

define float @test3(i1 %A, float %B) {
EntryBlock:
  %cf = select i1 %A, float 1.000000e+00, float %B
  %op = fsub float 2.000000e+00, %cf
  ret float %op



}

define float @test4(i1 %A, float %B) {
EntryBlock:
  %cf = select i1 %A, float 1.000000e+00, float %B
  %op = fmul float 2.000000e+00, %cf
  ret float %op



}

define float @test5(i1 %A, float %B) {
EntryBlock:
  %cf = select i1 %A, float 1.000000e+00, float %B
  %op = fdiv float 2.000000e+00, %cf
  ret float %op



}

define float @test6(i1 %A, float %B) {
EntryBlock:
  %cf = select i1 %A, float 1.000000e+00, float %B
  %op = fdiv float %cf, 2.000000e+00
  ret float %op



}

define float @test7(i1 %A, float %B) {
EntryBlock:
  %cf = select i1 %A, float 1.000000e+00, float %B
  %op = fdiv float %cf, 3.000000e+00
  ret float %op



}

