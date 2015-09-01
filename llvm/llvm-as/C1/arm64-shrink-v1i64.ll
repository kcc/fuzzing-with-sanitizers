






define <1 x i64> @dotest(<1 x i64> %in0) {
entry:
  %0 = add <1 x i64> %in0, %in0
  %vshl_n = shl <1 x i64> %0, <i64 32>
  %vsra_n = ashr <1 x i64> %vshl_n, <i64 32>
  ret <1 x i64> %vsra_n
}
