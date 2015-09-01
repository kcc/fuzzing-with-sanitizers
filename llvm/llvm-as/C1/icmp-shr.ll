

target datalayout = "e-p:64:64:64-p1:16:16:16-p2:32:32:32-p3:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"



define i1 @lshr_eq_msb_low_last_zero(i8 %a) {
 %shr = lshr i8 127, %a
 %cmp = icmp eq i8 %shr, 0
 ret i1 %cmp
}



define i1 @ashr_eq_msb_low_second_zero(i8 %a) {
 %shr = ashr i8 127, %a
 %cmp = icmp eq i8 %shr, 0
 ret i1 %cmp
}



define i1 @lshr_ne_msb_low_last_zero(i8 %a) {
 %shr = lshr i8 127, %a
 %cmp = icmp ne i8 %shr, 0
 ret i1 %cmp
}



define i1 @ashr_ne_msb_low_second_zero(i8 %a) {
 %shr = ashr i8 127, %a
 %cmp = icmp ne i8 %shr, 0
 ret i1 %cmp
}



define i1 @ashr_eq_both_equal(i8 %a) {
 %shr = ashr i8 128, %a
 %cmp = icmp eq i8 %shr, 128
 ret i1 %cmp
}



define i1 @ashr_ne_both_equal(i8 %a) {
 %shr = ashr i8 128, %a
 %cmp = icmp ne i8 %shr, 128
 ret i1 %cmp
}



define i1 @lshr_eq_both_equal(i8 %a) {
 %shr = lshr i8 127, %a
 %cmp = icmp eq i8 %shr, 127
 ret i1 %cmp
}



define i1 @lshr_ne_both_equal(i8 %a) {
 %shr = lshr i8 127, %a
 %cmp = icmp ne i8 %shr, 127
 ret i1 %cmp
}



define i1 @exact_ashr_eq_both_equal(i8 %a) {
 %shr = ashr exact i8 128, %a
 %cmp = icmp eq i8 %shr, 128
 ret i1 %cmp
}



define i1 @exact_ashr_ne_both_equal(i8 %a) {
 %shr = ashr exact i8 128, %a
 %cmp = icmp ne i8 %shr, 128
 ret i1 %cmp
}



define i1 @exact_lshr_eq_both_equal(i8 %a) {
 %shr = lshr exact i8 126, %a
 %cmp = icmp eq i8 %shr, 126
 ret i1 %cmp
}



define i1 @exact_lshr_ne_both_equal(i8 %a) {
 %shr = lshr exact i8 126, %a
 %cmp = icmp ne i8 %shr, 126
 ret i1 %cmp
}



define i1 @exact_lshr_eq_opposite_msb(i8 %a) {
 %shr = lshr exact i8 -128, %a
 %cmp = icmp eq i8 %shr, 1
 ret i1 %cmp
}



define i1 @lshr_eq_opposite_msb(i8 %a) {
 %shr = lshr i8 -128, %a
 %cmp = icmp eq i8 %shr, 1
 ret i1 %cmp
}



define i1 @exact_lshr_ne_opposite_msb(i8 %a) {
 %shr = lshr exact i8 -128, %a
 %cmp = icmp ne i8 %shr, 1
 ret i1 %cmp
}



define i1 @lshr_ne_opposite_msb(i8 %a) {
 %shr = lshr i8 -128, %a
 %cmp = icmp ne i8 %shr, 1
 ret i1 %cmp
}



define i1 @exact_ashr_eq(i8 %a) {
 %shr = ashr exact i8 -128, %a
 %cmp = icmp eq i8 %shr, -1
 ret i1 %cmp
}



define i1 @exact_ashr_ne(i8 %a) {
 %shr = ashr exact i8 -128, %a
 %cmp = icmp ne i8 %shr, -1
 ret i1 %cmp
}



define i1 @exact_lshr_eq(i8 %a) {
 %shr = lshr exact i8 4, %a
 %cmp = icmp eq i8 %shr, 1
 ret i1 %cmp
}



define i1 @exact_lshr_ne(i8 %a) {
 %shr = lshr exact i8 4, %a
 %cmp = icmp ne i8 %shr, 1
 ret i1 %cmp
}



define i1 @nonexact_ashr_eq(i8 %a) {
 %shr = ashr i8 -128, %a
 %cmp = icmp eq i8 %shr, -1
 ret i1 %cmp
}



define i1 @nonexact_ashr_ne(i8 %a) {
 %shr = ashr i8 -128, %a
 %cmp = icmp ne i8 %shr, -1
 ret i1 %cmp
}



define i1 @nonexact_lshr_eq(i8 %a) {
 %shr = lshr i8 4, %a
 %cmp = icmp eq i8 %shr, 1
 ret i1 %cmp
}



define i1 @nonexact_lshr_ne(i8 %a) {
 %shr = lshr i8 4, %a
 %cmp = icmp ne i8 %shr, 1
 ret i1 %cmp
}



define i1 @exact_lshr_eq_exactdiv(i8 %a) {
 %shr = lshr exact i8 80, %a
 %cmp = icmp eq i8 %shr, 5
 ret i1 %cmp
}



define i1 @exact_lshr_ne_exactdiv(i8 %a) {
 %shr = lshr exact i8 80, %a
 %cmp = icmp ne i8 %shr, 5
 ret i1 %cmp
}



define i1 @nonexact_lshr_eq_exactdiv(i8 %a) {
 %shr = lshr i8 80, %a
 %cmp = icmp eq i8 %shr, 5
 ret i1 %cmp
}



define i1 @nonexact_lshr_ne_exactdiv(i8 %a) {
 %shr = lshr i8 80, %a
 %cmp = icmp ne i8 %shr, 5
 ret i1 %cmp
}



define i1 @exact_ashr_eq_exactdiv(i8 %a) {
 %shr = ashr exact i8 -80, %a
 %cmp = icmp eq i8 %shr, -5
 ret i1 %cmp
}



define i1 @exact_ashr_ne_exactdiv(i8 %a) {
 %shr = ashr exact i8 -80, %a
 %cmp = icmp ne i8 %shr, -5
 ret i1 %cmp
}



define i1 @nonexact_ashr_eq_exactdiv(i8 %a) {
 %shr = ashr i8 -80, %a
 %cmp = icmp eq i8 %shr, -5
 ret i1 %cmp
}



define i1 @nonexact_ashr_ne_exactdiv(i8 %a) {
 %shr = ashr i8 -80, %a
 %cmp = icmp ne i8 %shr, -5
 ret i1 %cmp
}



define i1 @exact_lshr_eq_noexactdiv(i8 %a) {
 %shr = lshr exact i8 80, %a
 %cmp = icmp eq i8 %shr, 31
 ret i1 %cmp
}



define i1 @exact_lshr_ne_noexactdiv(i8 %a) {
 %shr = lshr exact i8 80, %a
 %cmp = icmp ne i8 %shr, 31
 ret i1 %cmp
}



define i1 @nonexact_lshr_eq_noexactdiv(i8 %a) {
 %shr = lshr i8 80, %a
 %cmp = icmp eq i8 %shr, 31
 ret i1 %cmp
}



define i1 @nonexact_lshr_ne_noexactdiv(i8 %a) {
 %shr = lshr i8 80, %a
 %cmp = icmp ne i8 %shr, 31
 ret i1 %cmp
}



define i1 @exact_ashr_eq_noexactdiv(i8 %a) {
 %shr = ashr exact i8 -80, %a
 %cmp = icmp eq i8 %shr, -31
 ret i1 %cmp
}



define i1 @exact_ashr_ne_noexactdiv(i8 %a) {
 %shr = ashr exact i8 -80, %a
 %cmp = icmp ne i8 %shr, -31
 ret i1 %cmp
}



define i1 @nonexact_ashr_eq_noexactdiv(i8 %a) {
 %shr = ashr i8 -80, %a
 %cmp = icmp eq i8 %shr, -31
 ret i1 %cmp
}



define i1 @nonexact_ashr_ne_noexactdiv(i8 %a) {
 %shr = ashr i8 -80, %a
 %cmp = icmp ne i8 %shr, -31
 ret i1 %cmp
}



define i1 @nonexact_lshr_eq_noexactlog(i8 %a) {
 %shr = lshr i8 90, %a
 %cmp = icmp eq i8 %shr, 30
 ret i1 %cmp
}



define i1 @nonexact_lshr_ne_noexactlog(i8 %a) {
 %shr = lshr i8 90, %a
 %cmp = icmp ne i8 %shr, 30
 ret i1 %cmp
}



define i1 @nonexact_ashr_eq_noexactlog(i8 %a) {
 %shr = ashr i8 -90, %a
 %cmp = icmp eq i8 %shr, -30
 ret i1 %cmp
}



define i1 @nonexact_ashr_ne_noexactlog(i8 %a) {
 %shr = ashr i8 -90, %a
 %cmp = icmp ne i8 %shr, -30
 ret i1 %cmp
}










define i1 @PR20945(i32 %B) {
  %shr = ashr i32 -9, %B
  %cmp = icmp ne i32 %shr, -5
  ret i1 %cmp
}



define i1 @PR21222(i32 %B) {
  %shr = ashr i32 -93, %B
  %cmp = icmp eq i32 %shr, -2
  ret i1 %cmp
}
