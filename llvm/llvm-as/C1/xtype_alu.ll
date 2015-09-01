







declare i64 @llvm.hexagon.A2.absp(i64)
define i64 @A2_absp(i64 %a) {
  %z = call i64 @llvm.hexagon.A2.absp(i64 %a)
  ret i64 %z
}



declare i32 @llvm.hexagon.A2.abs(i32)
define i32 @A2_abs(i32 %a) {
  %z = call i32 @llvm.hexagon.A2.abs(i32 %a)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.abssat(i32)
define i32 @A2_abssat(i32 %a) {
  %z = call i32 @llvm.hexagon.A2.abssat(i32 %a)
  ret i32 %z
}



declare i32 @llvm.hexagon.S4.addaddi(i32, i32, i32)
define i32 @S4_addaddi(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.S4.addaddi(i32 %a, i32 %b, i32 0)
  ret i32 %z
}


declare i32 @llvm.hexagon.S4.subaddi(i32, i32, i32)
define i32 @S4_subaddi(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.S4.subaddi(i32 %a, i32 0, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.M2.accii(i32, i32, i32)
define i32 @M2_accii(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.M2.accii(i32 %a, i32 %b, i32 0)
  ret i32 %z
}


declare i32 @llvm.hexagon.M2.naccii(i32, i32, i32)
define i32 @M2_naccii(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.M2.naccii(i32 %a, i32 %b, i32 0)
  ret i32 %z
}


declare i32 @llvm.hexagon.M2.acci(i32, i32, i32)
define i32 @M2_acci(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M2.acci(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}


declare i32 @llvm.hexagon.M2.nacci(i32, i32, i32)
define i32 @M2_nacci(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M2.nacci(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}



declare i64 @llvm.hexagon.A2.addp(i64, i64)
define i64 @A2_addp(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.addp(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.addpsat(i64, i64)
define i64 @A2_addpsat(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.addpsat(i64 %a, i64 %b)
  ret i64 %z
}



declare i32 @llvm.hexagon.A2.addh.l16.ll(i32, i32)
define i32 @A2_addh_l16_ll(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.l16.ll(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.addh.l16.hl(i32, i32)
define i32 @A2_addh_l16_hl(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.l16.hl(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.addh.l16.sat.ll(i32, i32)
define i32 @A2_addh_l16_sat.ll(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.l16.sat.ll(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.addh.l16.sat.hl(i32, i32)
define i32 @A2_addh_l16_sat.hl(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.l16.sat.hl(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.addh.h16.ll(i32, i32)
define i32 @A2_addh_h16_ll(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.h16.ll(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.addh.h16.lh(i32, i32)
define i32 @A2_addh_h16_lh(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.h16.lh(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.addh.h16.hl(i32, i32)
define i32 @A2_addh_h16_hl(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.h16.hl(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.addh.h16.hh(i32, i32)
define i32 @A2_addh_h16_hh(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.h16.hh(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.addh.h16.sat.ll(i32, i32)
define i32 @A2_addh_h16_sat_ll(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.h16.sat.ll(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.addh.h16.sat.lh(i32, i32)
define i32 @A2_addh_h16_sat_lh(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.h16.sat.lh(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.addh.h16.sat.hl(i32, i32)
define i32 @A2_addh_h16_sat_hl(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.h16.sat.hl(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.addh.h16.sat.hh(i32, i32)
define i32 @A2_addh_h16_sat_hh(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.addh.h16.sat.hh(i32 %a, i32 %b)
  ret i32 %z
}



declare i64 @llvm.hexagon.A2.notp(i64)
define i64 @A2_notp(i64 %a) {
  %z = call i64 @llvm.hexagon.A2.notp(i64 %a)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.andp(i64, i64)
define i64 @A2_andp(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.andp(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A4.andnp(i64, i64)
define i64 @A2_andnp(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A4.andnp(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.orp(i64, i64)
define i64 @A2_orp(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.orp(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A4.ornp(i64, i64)
define i64 @A2_ornp(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A4.ornp(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.xorp(i64, i64)
define i64 @A2_xorp(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.xorp(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.M4.xor.xacc(i64, i64, i64)
define i64 @M4_xor_xacc(i64 %a, i64 %b, i64 %c) {
  %z = call i64 @llvm.hexagon.M4.xor.xacc(i64 %a, i64 %b, i64 %c)
  ret i64 %z
}



declare i32 @llvm.hexagon.S4.or.andi(i32, i32, i32)
define i32 @S4_or_andi(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.S4.or.andi(i32 %a, i32 %b, i32 0)
  ret i32 %z
}


declare i32 @llvm.hexagon.S4.or.andix(i32, i32, i32)
define i32 @S4_or_andix(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.S4.or.andix(i32 %a, i32 %b, i32 0)
  ret i32 %z
}


declare i32 @llvm.hexagon.M4.or.andn(i32, i32, i32)
define i32 @M4_or_andn(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M4.or.andn(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}


declare i32 @llvm.hexagon.M4.and.andn(i32, i32, i32)
define i32 @M4_and_andn(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M4.and.andn(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}


declare i32 @llvm.hexagon.M4.xor.andn(i32, i32, i32)
define i32 @M4_xor_andn(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M4.xor.andn(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}


declare i32 @llvm.hexagon.M4.and.and(i32, i32, i32)
define i32 @M4_and_and(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M4.and.and(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}


declare i32 @llvm.hexagon.M4.and.or(i32, i32, i32)
define i32 @M4_and_or(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M4.and.or(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}


declare i32 @llvm.hexagon.M4.and.xor(i32, i32, i32)
define i32 @M4_and_xor(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M4.and.xor(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}


declare i32 @llvm.hexagon.M4.or.and(i32, i32, i32)
define i32 @M4_or_and(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M4.or.and(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}


declare i32 @llvm.hexagon.M4.or.or(i32, i32, i32)
define i32 @M4_or_or(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M4.or.or(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}


declare i32 @llvm.hexagon.M4.or.xor(i32, i32, i32)
define i32 @M4_or_xor(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M4.or.xor(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}


declare i32 @llvm.hexagon.M4.xor.and(i32, i32, i32)
define i32 @M4_xor_and(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M4.xor.and(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}


declare i32 @llvm.hexagon.M4.xor.or(i32, i32, i32)
define i32 @M4_xor_or(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M4.xor.or(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}



declare i32 @llvm.hexagon.A2.max(i32, i32)
define i32 @A2_max(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.max(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.maxu(i32, i32)
define i32 @A2_maxu(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.maxu(i32 %a, i32 %b)
  ret i32 %z
}



declare i64 @llvm.hexagon.A2.maxp(i64, i64)
define i64 @A2_maxp(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.maxp(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.maxup(i64, i64)
define i64 @A2_maxup(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.maxup(i64 %a, i64 %b)
  ret i64 %z
}



declare i32 @llvm.hexagon.A2.min(i32, i32)
define i32 @A2_min(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.min(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.minu(i32, i32)
define i32 @A2_minu(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.minu(i32 %a, i32 %b)
  ret i32 %z
}



declare i64 @llvm.hexagon.A2.minp(i64, i64)
define i64 @A2_minp(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.minp(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.minup(i64, i64)
define i64 @A2_minup(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.minup(i64 %a, i64 %b)
  ret i64 %z
}



declare i32 @llvm.hexagon.A4.modwrapu(i32, i32)
define i32 @A4_modwrapu(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A4.modwrapu(i32 %a, i32 %b)
  ret i32 %z
}



declare i64 @llvm.hexagon.A2.negp(i64)
define i64 @A2_negp(i64 %a) {
  %z = call i64 @llvm.hexagon.A2.negp(i64 %a)
  ret i64 %z
}


declare i32 @llvm.hexagon.A2.negsat(i32)
define i32 @A2_negsat(i32 %a) {
  %z = call i32 @llvm.hexagon.A2.negsat(i32 %a)
  ret i32 %z
}



declare i32 @llvm.hexagon.A2.roundsat(i64)
define i32 @A2_roundsat(i64 %a) {
  %z = call i32 @llvm.hexagon.A2.roundsat(i64 %a)
  ret i32 %z
}


declare i32 @llvm.hexagon.A4.cround.ri(i32, i32)
define i32 @A4_cround_ri(i32 %a) {
  %z = call i32 @llvm.hexagon.A4.cround.ri(i32 %a, i32 0)
  ret i32 %z
}


declare i32 @llvm.hexagon.A4.round.ri(i32, i32)
define i32 @A4_round_ri(i32 %a) {
  %z = call i32 @llvm.hexagon.A4.round.ri(i32 %a, i32 0)
  ret i32 %z
}


declare i32 @llvm.hexagon.A4.round.ri.sat(i32, i32)
define i32 @A4_round_ri_sat(i32 %a) {
  %z = call i32 @llvm.hexagon.A4.round.ri.sat(i32 %a, i32 0)
  ret i32 %z
}


declare i32 @llvm.hexagon.A4.cround.rr(i32, i32)
define i32 @A4_cround_rr(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A4.cround.rr(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A4.round.rr(i32, i32)
define i32 @A4_round_rr(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A4.round.rr(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A4.round.rr.sat(i32, i32)
define i32 @A4_round_rr_sat(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A4.round.rr.sat(i32 %a, i32 %b)
  ret i32 %z
}



declare i64 @llvm.hexagon.A2.subp(i64, i64)
define i64 @A2_subp(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.subp(i64 %a, i64 %b)
  ret i64 %z
}



declare i32 @llvm.hexagon.M2.subacc(i32, i32, i32)
define i32 @M2_subacc(i32 %a, i32 %b, i32 %c) {
  %z = call i32 @llvm.hexagon.M2.subacc(i32 %a, i32 %b, i32 %c)
  ret i32 %z
}



declare i32 @llvm.hexagon.A2.subh.l16.ll(i32, i32)
define i32 @A2_subh_l16_ll(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.l16.ll(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.subh.l16.hl(i32, i32)
define i32 @A2_subh_l16_hl(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.l16.hl(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.subh.l16.sat.ll(i32, i32)
define i32 @A2_subh_l16_sat.ll(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.l16.sat.ll(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.subh.l16.sat.hl(i32, i32)
define i32 @A2_subh_l16_sat.hl(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.l16.sat.hl(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.subh.h16.ll(i32, i32)
define i32 @A2_subh_h16_ll(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.h16.ll(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.subh.h16.lh(i32, i32)
define i32 @A2_subh_h16_lh(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.h16.lh(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.subh.h16.hl(i32, i32)
define i32 @A2_subh_h16_hl(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.h16.hl(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.subh.h16.hh(i32, i32)
define i32 @A2_subh_h16_hh(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.h16.hh(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.subh.h16.sat.ll(i32, i32)
define i32 @A2_subh_h16_sat_ll(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.h16.sat.ll(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.subh.h16.sat.lh(i32, i32)
define i32 @A2_subh_h16_sat_lh(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.h16.sat.lh(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.subh.h16.sat.hl(i32, i32)
define i32 @A2_subh_h16_sat_hl(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.h16.sat.hl(i32 %a, i32 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.A2.subh.h16.sat.hh(i32, i32)
define i32 @A2_subh_h16_sat_hh(i32 %a, i32 %b) {
  %z = call i32 @llvm.hexagon.A2.subh.h16.sat.hh(i32 %a, i32 %b)
  ret i32 %z
}



declare i64 @llvm.hexagon.A2.sxtw(i32)
define i64 @A2_sxtw(i32 %a) {
  %z = call i64 @llvm.hexagon.A2.sxtw(i32 %a)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vabsh(i64)
define i64 @A2_vabsh(i64 %a) {
  %z = call i64 @llvm.hexagon.A2.vabsh(i64 %a)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vabshsat(i64)
define i64 @A2_vabshsat(i64 %a) {
  %z = call i64 @llvm.hexagon.A2.vabshsat(i64 %a)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vabsw(i64)
define i64 @A2_vabsw(i64 %a) {
  %z = call i64 @llvm.hexagon.A2.vabsw(i64 %a)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vabswsat(i64)
define i64 @A2_vabswsat(i64 %a) {
  %z = call i64 @llvm.hexagon.A2.vabswsat(i64 %a)
  ret i64 %z
}



declare i64 @llvm.hexagon.M2.vabsdiffh(i64, i64)
define i64 @M2_vabsdiffh(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.M2.vabsdiffh(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.M2.vabsdiffw(i64, i64)
define i64 @M2_vabsdiffw(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.M2.vabsdiffw(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vaddh(i64, i64)
define i64 @A2_vaddh(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vaddh(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vaddhs(i64, i64)
define i64 @A2_vaddhs(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vaddhs(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vadduhs(i64, i64)
define i64 @A2_vadduhs(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vadduhs(i64 %a, i64 %b)
  ret i64 %z
}



declare i32 @llvm.hexagon.A5.vaddhubs(i64, i64)
define i32 @A5_vaddhubs(i64 %a, i64 %b) {
  %z = call i32 @llvm.hexagon.A5.vaddhubs(i64 %a, i64 %b)
  ret i32 %z
}



declare i64 @llvm.hexagon.A2.vraddub(i64, i64)
define i64 @A2_vraddub(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vraddub(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vraddub.acc(i64, i64, i64)
define i64 @A2_vraddub_acc(i64 %a, i64 %b, i64 %c) {
  %z = call i64 @llvm.hexagon.A2.vraddub.acc(i64 %a, i64 %b, i64 %c)
  ret i64 %z
}



declare i32 @llvm.hexagon.M2.vradduh(i64, i64)
define i32 @M2_vradduh(i64 %a, i64 %b) {
  %z = call i32 @llvm.hexagon.M2.vradduh(i64 %a, i64 %b)
  ret i32 %z
}


declare i32 @llvm.hexagon.M2.vraddh(i64, i64)
define i32 @M2_vraddh(i64 %a, i64 %b) {
  %z = call i32 @llvm.hexagon.M2.vraddh(i64 %a, i64 %b)
  ret i32 %z
}



declare i64 @llvm.hexagon.A2.vaddub(i64, i64)
define i64 @A2_vaddub(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vaddub(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vaddubs(i64, i64)
define i64 @A2_vaddubs(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vaddubs(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vaddw(i64, i64)
define i64 @A2_vaddw(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vaddw(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vaddws(i64, i64)
define i64 @A2_vaddws(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vaddws(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vavgh(i64, i64)
define i64 @A2_vavgh(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavgh(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vavghr(i64, i64)
define i64 @A2_vavghr(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavghr(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vavghcr(i64, i64)
define i64 @A2_vavghcr(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavghcr(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vavguh(i64, i64)
define i64 @A2_vavguh(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavguh(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vavguhr(i64, i64)
define i64 @A2_vavguhr(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavguhr(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vnavgh(i64, i64)
define i64 @A2_vnavgh(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vnavgh(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vnavghr(i64, i64)
define i64 @A2_vnavghr(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vnavghr(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vnavghcr(i64, i64)
define i64 @A2_vnavghcr(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vnavghcr(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vavgub(i64, i64)
define i64 @A2_vavgub(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavgub(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vavgubr(i64, i64)
define i64 @A2_vavgubr(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavgubr(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vavgw(i64, i64)
define i64 @A2_vavgw(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavgw(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vavgwr(i64, i64)
define i64 @A2_vavgwr(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavgwr(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vavgwcr(i64, i64)
define i64 @A2_vavgwcr(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavgwcr(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vavguw(i64, i64)
define i64 @A2_vavguw(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavguw(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vavguwr(i64, i64)
define i64 @A2_vavguwr(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vavguwr(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vnavgw(i64, i64)
define i64 @A2_vnavgw(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vnavgw(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vnavgwr(i64, i64)
define i64 @A2_vnavgwr(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vnavgwr(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vnavgwcr(i64, i64)
define i64 @A2_vnavgwcr(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vnavgwcr(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.S2.vcnegh(i64, i32)
define i64 @S2_vcnegh(i64 %a, i32 %b) {
  %z = call i64 @llvm.hexagon.S2.vcnegh(i64 %a, i32 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.S2.vrcnegh(i64, i64, i32)
define i64 @S2_vrcnegh(i64 %a, i64 %b, i32 %c) {
  %z = call i64 @llvm.hexagon.S2.vrcnegh(i64 %a, i64 %b, i32 %c)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vmaxub(i64, i64)
define i64 @A2_vmaxub(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vmaxub(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vmaxb(i64, i64)
define i64 @A2_vmaxb(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vmaxb(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vmaxh(i64, i64)
define i64 @A2_vmaxh(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vmaxh(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vmaxuh(i64, i64)
define i64 @A2_vmaxuh(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vmaxuh(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.A4.vrmaxh(i64, i64, i32)
define i64 @A4_vrmaxh(i64 %a, i64 %b, i32 %c) {
  %z = call i64 @llvm.hexagon.A4.vrmaxh(i64 %a, i64 %b, i32 %c)
  ret i64 %z
}


declare i64 @llvm.hexagon.A4.vrmaxuh(i64, i64, i32)
define i64 @A4_vrmaxuh(i64 %a, i64 %b, i32 %c) {
  %z = call i64 @llvm.hexagon.A4.vrmaxuh(i64 %a, i64 %b, i32 %c)
  ret i64 %z
}



declare i64 @llvm.hexagon.A4.vrmaxw(i64, i64, i32)
define i64 @A4_vrmaxw(i64 %a, i64 %b, i32 %c) {
  %z = call i64 @llvm.hexagon.A4.vrmaxw(i64 %a, i64 %b, i32 %c)
  ret i64 %z
}


declare i64 @llvm.hexagon.A4.vrmaxuw(i64, i64, i32)
define i64 @A4_vrmaxuw(i64 %a, i64 %b, i32 %c) {
  %z = call i64 @llvm.hexagon.A4.vrmaxuw(i64 %a, i64 %b, i32 %c)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vminub(i64, i64)
define i64 @A2_vminub(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vminub(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vminb(i64, i64)
define i64 @A2_vminb(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vminb(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vminh(i64, i64)
define i64 @A2_vminh(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vminh(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vminuh(i64, i64)
define i64 @A2_vminuh(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vminuh(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.A4.vrminh(i64, i64, i32)
define i64 @A4_vrminh(i64 %a, i64 %b, i32 %c) {
  %z = call i64 @llvm.hexagon.A4.vrminh(i64 %a, i64 %b, i32 %c)
  ret i64 %z
}


declare i64 @llvm.hexagon.A4.vrminuh(i64, i64, i32)
define i64 @A4_vrminuh(i64 %a, i64 %b, i32 %c) {
  %z = call i64 @llvm.hexagon.A4.vrminuh(i64 %a, i64 %b, i32 %c)
  ret i64 %z
}



declare i64 @llvm.hexagon.A4.vrminw(i64, i64, i32)
define i64 @A4_vrminw(i64 %a, i64 %b, i32 %c) {
  %z = call i64 @llvm.hexagon.A4.vrminw(i64 %a, i64 %b, i32 %c)
  ret i64 %z
}


declare i64 @llvm.hexagon.A4.vrminuw(i64, i64, i32)
define i64 @A4_vrminuw(i64 %a, i64 %b, i32 %c) {
  %z = call i64 @llvm.hexagon.A4.vrminuw(i64 %a, i64 %b, i32 %c)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vrsadub(i64, i64)
define i64 @A2_vrsadub(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vrsadub(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vrsadub.acc(i64, i64, i64)
define i64 @A2_vrsadub_acc(i64 %a, i64 %b, i64 %c) {
  %z = call i64 @llvm.hexagon.A2.vrsadub.acc(i64 %a, i64 %b, i64 %c)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vsubh(i64, i64)
define i64 @A2_vsubh(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vsubh(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vsubhs(i64, i64)
define i64 @A2_vsubhs(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vsubhs(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vsubuhs(i64, i64)
define i64 @A2_vsubuhs(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vsubuhs(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vsubub(i64, i64)
define i64 @A2_vsubub(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vsubub(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vsububs(i64, i64)
define i64 @A2_vsububs(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vsububs(i64 %a, i64 %b)
  ret i64 %z
}



declare i64 @llvm.hexagon.A2.vsubw(i64, i64)
define i64 @A2_vsubw(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vsubw(i64 %a, i64 %b)
  ret i64 %z
}


declare i64 @llvm.hexagon.A2.vsubws(i64, i64)
define i64 @A2_vsubws(i64 %a, i64 %b) {
  %z = call i64 @llvm.hexagon.A2.vsubws(i64 %a, i64 %b)
  ret i64 %z
}

