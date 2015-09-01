


define <1 x i1> @buildvec_promote() {
  %cmp = icmp ule <1 x i32> undef, undef
  %sel = select i1 undef, <1 x i1> undef, <1 x i1> %cmp
  ret <1 x i1> %sel
}
