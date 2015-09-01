











define <2 x i64> @max_gt_v2i64(<2 x i64> %a, <2 x i64> %b) {


























































  %1 = icmp ugt <2 x i64> %a, %b
  %2 = select <2 x i1> %1, <2 x i64> %a, <2 x i64> %b
  ret <2 x i64> %2
}

define <4 x i64> @max_gt_v4i64(<4 x i64> %a, <4 x i64> %b) {
























































































































  %1 = icmp ugt <4 x i64> %a, %b
  %2 = select <4 x i1> %1, <4 x i64> %a, <4 x i64> %b
  ret <4 x i64> %2
}

define <4 x i32> @max_gt_v4i32(<4 x i32> %a, <4 x i32> %b) {


























  %1 = icmp ugt <4 x i32> %a, %b
  %2 = select <4 x i1> %1, <4 x i32> %a, <4 x i32> %b
  ret <4 x i32> %2
}

define <8 x i32> @max_gt_v8i32(<8 x i32> %a, <8 x i32> %b) {



















































  %1 = icmp ugt <8 x i32> %a, %b
  %2 = select <8 x i1> %1, <8 x i32> %a, <8 x i32> %b
  ret <8 x i32> %2
}

define <8 x i16> @max_gt_v8i16(<8 x i16> %a, <8 x i16> %b) {


























  %1 = icmp ugt <8 x i16> %a, %b
  %2 = select <8 x i1> %1, <8 x i16> %a, <8 x i16> %b
  ret <8 x i16> %2
}

define <16 x i16> @max_gt_v16i16(<16 x i16> %a, <16 x i16> %b) {



















































  %1 = icmp ugt <16 x i16> %a, %b
  %2 = select <16 x i1> %1, <16 x i16> %a, <16 x i16> %b
  ret <16 x i16> %2
}

define <16 x i8> @max_gt_v16i8(<16 x i8> %a, <16 x i8> %b) {









  %1 = icmp ugt <16 x i8> %a, %b
  %2 = select <16 x i1> %1, <16 x i8> %a, <16 x i8> %b
  ret <16 x i8> %2
}

define <32 x i8> @max_gt_v32i8(<32 x i8> %a, <32 x i8> %b) {
























  %1 = icmp ugt <32 x i8> %a, %b
  %2 = select <32 x i1> %1, <32 x i8> %a, <32 x i8> %b
  ret <32 x i8> %2
}





define <2 x i64> @max_ge_v2i64(<2 x i64> %a, <2 x i64> %b) {


































































  %1 = icmp uge <2 x i64> %a, %b
  %2 = select <2 x i1> %1, <2 x i64> %a, <2 x i64> %b
  ret <2 x i64> %2
}

define <4 x i64> @max_ge_v4i64(<4 x i64> %a, <4 x i64> %b) {











































































































































  %1 = icmp uge <4 x i64> %a, %b
  %2 = select <4 x i1> %1, <4 x i64> %a, <4 x i64> %b
  ret <4 x i64> %2
}

define <4 x i32> @max_ge_v4i32(<4 x i32> %a, <4 x i32> %b) {





























  %1 = icmp uge <4 x i32> %a, %b
  %2 = select <4 x i1> %1, <4 x i32> %a, <4 x i32> %b
  ret <4 x i32> %2
}

define <8 x i32> @max_ge_v8i32(<8 x i32> %a, <8 x i32> %b) {
























































  %1 = icmp uge <8 x i32> %a, %b
  %2 = select <8 x i1> %1, <8 x i32> %a, <8 x i32> %b
  ret <8 x i32> %2
}

define <8 x i16> @max_ge_v8i16(<8 x i16> %a, <8 x i16> %b) {

























  %1 = icmp uge <8 x i16> %a, %b
  %2 = select <8 x i1> %1, <8 x i16> %a, <8 x i16> %b
  ret <8 x i16> %2
}

define <16 x i16> @max_ge_v16i16(<16 x i16> %a, <16 x i16> %b) {















































  %1 = icmp uge <16 x i16> %a, %b
  %2 = select <16 x i1> %1, <16 x i16> %a, <16 x i16> %b
  ret <16 x i16> %2
}

define <16 x i8> @max_ge_v16i8(<16 x i8> %a, <16 x i8> %b) {









  %1 = icmp uge <16 x i8> %a, %b
  %2 = select <16 x i1> %1, <16 x i8> %a, <16 x i8> %b
  ret <16 x i8> %2
}

define <32 x i8> @max_ge_v32i8(<32 x i8> %a, <32 x i8> %b) {
























  %1 = icmp uge <32 x i8> %a, %b
  %2 = select <32 x i1> %1, <32 x i8> %a, <32 x i8> %b
  ret <32 x i8> %2
}





define <2 x i64> @min_lt_v2i64(<2 x i64> %a, <2 x i64> %b) {


























































  %1 = icmp ult <2 x i64> %a, %b
  %2 = select <2 x i1> %1, <2 x i64> %a, <2 x i64> %b
  ret <2 x i64> %2
}

define <4 x i64> @min_lt_v4i64(<4 x i64> %a, <4 x i64> %b) {
























































































































  %1 = icmp ult <4 x i64> %a, %b
  %2 = select <4 x i1> %1, <4 x i64> %a, <4 x i64> %b
  ret <4 x i64> %2
}

define <4 x i32> @min_lt_v4i32(<4 x i32> %a, <4 x i32> %b) {


























  %1 = icmp ult <4 x i32> %a, %b
  %2 = select <4 x i1> %1, <4 x i32> %a, <4 x i32> %b
  ret <4 x i32> %2
}

define <8 x i32> @min_lt_v8i32(<8 x i32> %a, <8 x i32> %b) {


















































  %1 = icmp ult <8 x i32> %a, %b
  %2 = select <8 x i1> %1, <8 x i32> %a, <8 x i32> %b
  ret <8 x i32> %2
}

define <8 x i16> @min_lt_v8i16(<8 x i16> %a, <8 x i16> %b) {


























  %1 = icmp ult <8 x i16> %a, %b
  %2 = select <8 x i1> %1, <8 x i16> %a, <8 x i16> %b
  ret <8 x i16> %2
}

define <16 x i16> @min_lt_v16i16(<16 x i16> %a, <16 x i16> %b) {


















































  %1 = icmp ult <16 x i16> %a, %b
  %2 = select <16 x i1> %1, <16 x i16> %a, <16 x i16> %b
  ret <16 x i16> %2
}

define <16 x i8> @min_lt_v16i8(<16 x i8> %a, <16 x i8> %b) {









  %1 = icmp ult <16 x i8> %a, %b
  %2 = select <16 x i1> %1, <16 x i8> %a, <16 x i8> %b
  ret <16 x i8> %2
}

define <32 x i8> @min_lt_v32i8(<32 x i8> %a, <32 x i8> %b) {
























  %1 = icmp ult <32 x i8> %a, %b
  %2 = select <32 x i1> %1, <32 x i8> %a, <32 x i8> %b
  ret <32 x i8> %2
}





define <2 x i64> @min_le_v2i64(<2 x i64> %a, <2 x i64> %b) {



































































  %1 = icmp ule <2 x i64> %a, %b
  %2 = select <2 x i1> %1, <2 x i64> %a, <2 x i64> %b
  ret <2 x i64> %2
}

define <4 x i64> @min_le_v4i64(<4 x i64> %a, <4 x i64> %b) {











































































































































  %1 = icmp ule <4 x i64> %a, %b
  %2 = select <4 x i1> %1, <4 x i64> %a, <4 x i64> %b
  ret <4 x i64> %2
}

define <4 x i32> @min_le_v4i32(<4 x i32> %a, <4 x i32> %b) {





























  %1 = icmp ule <4 x i32> %a, %b
  %2 = select <4 x i1> %1, <4 x i32> %a, <4 x i32> %b
  ret <4 x i32> %2
}

define <8 x i32> @min_le_v8i32(<8 x i32> %a, <8 x i32> %b) {
























































  %1 = icmp ule <8 x i32> %a, %b
  %2 = select <8 x i1> %1, <8 x i32> %a, <8 x i32> %b
  ret <8 x i32> %2
}

define <8 x i16> @min_le_v8i16(<8 x i16> %a, <8 x i16> %b) {

























  %1 = icmp ule <8 x i16> %a, %b
  %2 = select <8 x i1> %1, <8 x i16> %a, <8 x i16> %b
  ret <8 x i16> %2
}

define <16 x i16> @min_le_v16i16(<16 x i16> %a, <16 x i16> %b) {

















































  %1 = icmp ule <16 x i16> %a, %b
  %2 = select <16 x i1> %1, <16 x i16> %a, <16 x i16> %b
  ret <16 x i16> %2
}

define <16 x i8> @min_le_v16i8(<16 x i8> %a, <16 x i8> %b) {









  %1 = icmp ule <16 x i8> %a, %b
  %2 = select <16 x i1> %1, <16 x i8> %a, <16 x i8> %b
  ret <16 x i8> %2
}

define <32 x i8> @min_le_v32i8(<32 x i8> %a, <32 x i8> %b) {
























  %1 = icmp ule <32 x i8> %a, %b
  %2 = select <32 x i1> %1, <32 x i8> %a, <32 x i8> %b
  ret <32 x i8> %2
}





define <2 x i64> @max_gt_v2i64c() {


























































  %1 = insertelement <2 x i64> <i64 -7, i64 7>, i64 -7, i32 0
  %2 = insertelement <2 x i64> <i64 -1, i64 1>, i64 -1, i32 0
  %3 = icmp ugt <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  ret <2 x i64> %4
}

define <4 x i64> @max_gt_v4i64c() {




















































































































  %1 = insertelement <4 x i64> <i64 -7, i64 -1, i64 1, i64 7>, i64 -7, i32 0
  %2 = insertelement <4 x i64> <i64 -1, i64 -7, i64 7, i64 1>, i64 -1, i32 0
  %3 = icmp ugt <4 x i64> %1, %2
  %4 = select <4 x i1> %3, <4 x i64> %1, <4 x i64> %2
  ret <4 x i64> %4
}

define <4 x i32> @max_gt_v4i32c() {
























  %1 = insertelement <4 x i32> <i32 -7, i32 -1, i32 1, i32 7>, i32 -7, i32 0
  %2 = insertelement <4 x i32> <i32 -1, i32 -7, i32 7, i32 1>, i32 -1, i32 0
  %3 = icmp ugt <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  ret <4 x i32> %4
}

define <8 x i32> @max_gt_v8i32c() {
































  %1 = insertelement <8 x i32> <i32 -7, i32 -5, i32 -3, i32 -1, i32 1, i32 3, i32 5, i32 7>, i32 -7, i32 0
  %2 = insertelement <8 x i32> <i32 -1, i32 -3, i32 -5, i32 -7, i32 7, i32 5, i32 3, i32 1>, i32 -1, i32 0
  %3 = icmp ugt <8 x i32> %1, %2
  %4 = select <8 x i1> %3, <8 x i32> %1, <8 x i32> %2
  ret <8 x i32> %4
}

define <8 x i16> @max_gt_v8i16c() {
























  %1 = insertelement <8 x i16> <i16 -7, i16 -5, i16 -3, i16 -1, i16 1, i16 3, i16 5, i16 7>, i16 -7, i32 0
  %2 = insertelement <8 x i16> <i16 -1, i16 -3, i16 -5, i16 -7, i16 7, i16 5, i16 3, i16 1>, i16 -1, i32 0
  %3 = icmp ugt <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  ret <8 x i16> %4
}

define <16 x i16> @max_gt_v16i16c() {
































  %1 = insertelement <16 x i16> <i16 -7, i16 -6, i16 -5, i16 -4, i16 -3, i16 -2, i16 -1, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, i16 -7, i32 0
  %2 = insertelement <16 x i16> <i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 -7, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0>, i16 -1, i32 0
  %3 = icmp ugt <16 x i16> %1, %2
  %4 = select <16 x i1> %3, <16 x i16> %1, <16 x i16> %2
  ret <16 x i16> %4
}

define <16 x i8> @max_gt_v16i8c() {









  %1 = insertelement <16 x i8> <i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>, i8 -7, i32 0
  %2 = insertelement <16 x i8> <i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 0, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>, i8 -1, i32 0
  %3 = icmp ugt <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  ret <16 x i8> %4
}

define <2 x i64> @max_ge_v2i64c() {

































































  %1 = insertelement <2 x i64> <i64 -7, i64 7>, i64 -7, i32 0
  %2 = insertelement <2 x i64> <i64 -1, i64 1>, i64 -1, i32 0
  %3 = icmp uge <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  ret <2 x i64> %4
}

define <4 x i64> @max_ge_v4i64c() {



































































































































  %1 = insertelement <4 x i64> <i64 -7, i64 -1, i64 1, i64 7>, i64 -7, i32 0
  %2 = insertelement <4 x i64> <i64 -1, i64 -7, i64 7, i64 1>, i64 -1, i32 0
  %3 = icmp uge <4 x i64> %1, %2
  %4 = select <4 x i1> %3, <4 x i64> %1, <4 x i64> %2
  ret <4 x i64> %4
}

define <4 x i32> @max_ge_v4i32c() {

























  %1 = insertelement <4 x i32> <i32 -7, i32 -1, i32 1, i32 7>, i32 -7, i32 0
  %2 = insertelement <4 x i32> <i32 -1, i32 -7, i32 7, i32 1>, i32 -1, i32 0
  %3 = icmp uge <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  ret <4 x i32> %4
}

define <8 x i32> @max_ge_v8i32c() {


































  %1 = insertelement <8 x i32> <i32 -7, i32 -5, i32 -3, i32 -1, i32 1, i32 3, i32 5, i32 7>, i32 -7, i32 0
  %2 = insertelement <8 x i32> <i32 -1, i32 -3, i32 -5, i32 -7, i32 7, i32 5, i32 3, i32 1>, i32 -1, i32 0
  %3 = icmp uge <8 x i32> %1, %2
  %4 = select <8 x i1> %3, <8 x i32> %1, <8 x i32> %2
  ret <8 x i32> %4
}

define <8 x i16> @max_ge_v8i16c() {



























  %1 = insertelement <8 x i16> <i16 -7, i16 -5, i16 -3, i16 -1, i16 1, i16 3, i16 5, i16 7>, i16 -7, i32 0
  %2 = insertelement <8 x i16> <i16 -1, i16 -3, i16 -5, i16 -7, i16 7, i16 5, i16 3, i16 1>, i16 -1, i32 0
  %3 = icmp uge <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  ret <8 x i16> %4
}

define <16 x i16> @max_ge_v16i16c() {





































  %1 = insertelement <16 x i16> <i16 -7, i16 -6, i16 -5, i16 -4, i16 -3, i16 -2, i16 -1, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, i16 -7, i32 0
  %2 = insertelement <16 x i16> <i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 -7, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0>, i16 -1, i32 0
  %3 = icmp uge <16 x i16> %1, %2
  %4 = select <16 x i1> %3, <16 x i16> %1, <16 x i16> %2
  ret <16 x i16> %4
}

define <16 x i8> @max_ge_v16i8c() {









  %1 = insertelement <16 x i8> <i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>, i8 -7, i32 0
  %2 = insertelement <16 x i8> <i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 0, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>, i8 -1, i32 0
  %3 = icmp uge <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  ret <16 x i8> %4
}

define <2 x i64> @min_lt_v2i64c() {


























































  %1 = insertelement <2 x i64> <i64 -7, i64 7>, i64 -7, i32 0
  %2 = insertelement <2 x i64> <i64 -1, i64 1>, i64 -1, i32 0
  %3 = icmp ult <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  ret <2 x i64> %4
}

define <4 x i64> @min_lt_v4i64c() {




















































































































  %1 = insertelement <4 x i64> <i64 -7, i64 -1, i64 1, i64 7>, i64 -7, i32 0
  %2 = insertelement <4 x i64> <i64 -1, i64 -7, i64 7, i64 1>, i64 -1, i32 0
  %3 = icmp ult <4 x i64> %1, %2
  %4 = select <4 x i1> %3, <4 x i64> %1, <4 x i64> %2
  ret <4 x i64> %4
}

define <4 x i32> @min_lt_v4i32c() {
























  %1 = insertelement <4 x i32> <i32 -7, i32 -1, i32 1, i32 7>, i32 -7, i32 0
  %2 = insertelement <4 x i32> <i32 -1, i32 -7, i32 7, i32 1>, i32 -1, i32 0
  %3 = icmp ult <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  ret <4 x i32> %4
}

define <8 x i32> @min_lt_v8i32c() {
































  %1 = insertelement <8 x i32> <i32 -7, i32 -5, i32 -3, i32 -1, i32 1, i32 3, i32 5, i32 7>, i32 -7, i32 0
  %2 = insertelement <8 x i32> <i32 -1, i32 -3, i32 -5, i32 -7, i32 7, i32 5, i32 3, i32 1>, i32 -1, i32 0
  %3 = icmp ult <8 x i32> %1, %2
  %4 = select <8 x i1> %3, <8 x i32> %1, <8 x i32> %2
  ret <8 x i32> %4
}

define <8 x i16> @min_lt_v8i16c() {


























  %1 = insertelement <8 x i16> <i16 -7, i16 -5, i16 -3, i16 -1, i16 1, i16 3, i16 5, i16 7>, i16 -7, i32 0
  %2 = insertelement <8 x i16> <i16 -1, i16 -3, i16 -5, i16 -7, i16 7, i16 5, i16 3, i16 1>, i16  1, i32 0
  %3 = icmp ult <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  ret <8 x i16> %4
}

define <16 x i16> @min_lt_v16i16c() {
































  %1 = insertelement <16 x i16> <i16 -7, i16 -6, i16 -5, i16 -4, i16 -3, i16 -2, i16 -1, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, i16 -7, i32 0
  %2 = insertelement <16 x i16> <i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 -7, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0>, i16  1, i32 0
  %3 = icmp ult <16 x i16> %1, %2
  %4 = select <16 x i1> %3, <16 x i16> %1, <16 x i16> %2
  ret <16 x i16> %4
}

define <16 x i8> @min_lt_v16i8c() {









  %1 = insertelement <16 x i8> <i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>, i8 -7, i32 0
  %2 = insertelement <16 x i8> <i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 0, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>, i8  1, i32 0
  %3 = icmp ult <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  ret <16 x i8> %4
}

define <2 x i64> @min_le_v2i64c() {

































































  %1 = insertelement <2 x i64> <i64 -7, i64 7>, i64 -7, i32 0
  %2 = insertelement <2 x i64> <i64 -1, i64 1>, i64 -1, i32 0
  %3 = icmp ule <2 x i64> %1, %2
  %4 = select <2 x i1> %3, <2 x i64> %1, <2 x i64> %2
  ret <2 x i64> %4
}

define <4 x i64> @min_le_v4i64c() {



































































































































  %1 = insertelement <4 x i64> <i64 -7, i64 -1, i64 1, i64 7>, i64 -7, i32 0
  %2 = insertelement <4 x i64> <i64 -1, i64 -7, i64 7, i64 1>, i64 -1, i32 0
  %3 = icmp ule <4 x i64> %1, %2
  %4 = select <4 x i1> %3, <4 x i64> %1, <4 x i64> %2
  ret <4 x i64> %4
}

define <4 x i32> @min_le_v4i32c() {

























  %1 = insertelement <4 x i32> <i32 -7, i32 -1, i32 1, i32 7>, i32 -7, i32 0
  %2 = insertelement <4 x i32> <i32 -1, i32 -7, i32 7, i32 1>, i32 -1, i32 0
  %3 = icmp ule <4 x i32> %1, %2
  %4 = select <4 x i1> %3, <4 x i32> %1, <4 x i32> %2
  ret <4 x i32> %4
}

define <8 x i32> @min_le_v8i32c() {


































  %1 = insertelement <8 x i32> <i32 -7, i32 -5, i32 -3, i32 -1, i32 1, i32 3, i32 5, i32 7>, i32 -7, i32 0
  %2 = insertelement <8 x i32> <i32 -1, i32 -3, i32 -5, i32 -7, i32 7, i32 5, i32 3, i32 1>, i32 -1, i32 0
  %3 = icmp ule <8 x i32> %1, %2
  %4 = select <8 x i1> %3, <8 x i32> %1, <8 x i32> %2
  ret <8 x i32> %4
}

define <8 x i16> @min_le_v8i16c() {



























  %1 = insertelement <8 x i16> <i16 -7, i16 -5, i16 -3, i16 -1, i16 1, i16 3, i16 5, i16 7>, i16 -7, i32 0
  %2 = insertelement <8 x i16> <i16 -1, i16 -3, i16 -5, i16 -7, i16 7, i16 5, i16 3, i16 1>, i16 -1, i32 0
  %3 = icmp ule <8 x i16> %1, %2
  %4 = select <8 x i1> %3, <8 x i16> %1, <8 x i16> %2
  ret <8 x i16> %4
}

define <16 x i16> @min_le_v16i16c() {





































  %1 = insertelement <16 x i16> <i16 -7, i16 -6, i16 -5, i16 -4, i16 -3, i16 -2, i16 -1, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8>, i16 -7, i32 0
  %2 = insertelement <16 x i16> <i16 -1, i16 -2, i16 -3, i16 -4, i16 -5, i16 -6, i16 -7, i16 0, i16 7, i16 6, i16 5, i16 4, i16 3, i16 2, i16 1, i16 0>, i16 -1, i32 0
  %3 = icmp ule <16 x i16> %1, %2
  %4 = select <16 x i1> %3, <16 x i16> %1, <16 x i16> %2
  ret <16 x i16> %4
}

define <16 x i8> @min_le_v16i8c() {









  %1 = insertelement <16 x i8> <i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>, i8 -7, i32 0
  %2 = insertelement <16 x i8> <i8 -1, i8 -2, i8 -3, i8 -4, i8 -5, i8 -6, i8 -7, i8 0, i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>, i8 -1, i32 0
  %3 = icmp ule <16 x i8> %1, %2
  %4 = select <16 x i1> %3, <16 x i8> %1, <16 x i8> %2
  ret <16 x i8> %4
}
