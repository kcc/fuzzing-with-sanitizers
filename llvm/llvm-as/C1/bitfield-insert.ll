




%struct.foo = type { i8, [2 x i8], i8 }

define [1 x i64] @from_clang([1 x i64] %f.coerce, i32 %n) nounwind readnone {



entry:
  %f.coerce.fca.0.extract = extractvalue [1 x i64] %f.coerce, 0
  %tmp.sroa.0.0.extract.trunc = trunc i64 %f.coerce.fca.0.extract to i32
  %bf.value = shl i32 %n, 3
  %0 = and i32 %bf.value, 120
  %f.sroa.0.0.insert.ext.masked = and i32 %tmp.sroa.0.0.extract.trunc, 135
  %1 = or i32 %f.sroa.0.0.insert.ext.masked, %0
  %f.sroa.0.0.extract.trunc = zext i32 %1 to i64
  %tmp1.sroa.1.1.insert.insert = and i64 %f.coerce.fca.0.extract, 4294967040
  %tmp1.sroa.0.0.insert.insert = or i64 %f.sroa.0.0.extract.trunc, %tmp1.sroa.1.1.insert.insert
  %.fca.0.insert = insertvalue [1 x i64] undef, i64 %tmp1.sroa.0.0.insert.insert, 0
  ret [1 x i64] %.fca.0.insert
}

define void @test_whole32(i32* %existing, i32* %new) {




  %oldval = load volatile i32, i32* %existing
  %oldval_keep = and i32 %oldval, 2214592511 

  %newval = load volatile i32, i32* %new
  %newval_shifted = shl i32 %newval, 26
  %newval_masked = and i32 %newval_shifted, 2080374784 

  %combined = or i32 %oldval_keep, %newval_masked
  store volatile i32 %combined, i32* %existing

  ret void
}

define void @test_whole64(i64* %existing, i64* %new) {





  %oldval = load volatile i64, i64* %existing
  %oldval_keep = and i64 %oldval, 18446742974265032703 

  %newval = load volatile i64, i64* %new
  %newval_shifted = shl i64 %newval, 26
  %newval_masked = and i64 %newval_shifted, 1099444518912 

  %combined = or i64 %oldval_keep, %newval_masked
  store volatile i64 %combined, i64* %existing

  ret void
}

define void @test_whole32_from64(i64* %existing, i64* %new) {







  %oldval = load volatile i64, i64* %existing
  %oldval_keep = and i64 %oldval, 4294901760 

  %newval = load volatile i64, i64* %new
  %newval_masked = and i64 %newval, 65535 

  %combined = or i64 %oldval_keep, %newval_masked
  store volatile i64 %combined, i64* %existing

  ret void
}

define void @test_32bit_masked(i32 *%existing, i32 *%new) {





  %oldval = load volatile i32, i32* %existing
  %oldval_keep = and i32 %oldval, 135 

  %newval = load volatile i32, i32* %new
  %newval_shifted = shl i32 %newval, 3
  %newval_masked = and i32 %newval_shifted, 120 

  %combined = or i32 %oldval_keep, %newval_masked
  store volatile i32 %combined, i32* %existing

  ret void
}

define void @test_64bit_masked(i64 *%existing, i64 *%new) {




  %oldval = load volatile i64, i64* %existing
  %oldval_keep = and i64 %oldval, 1095216660480 

  %newval = load volatile i64, i64* %new
  %newval_shifted = shl i64 %newval, 40
  %newval_masked = and i64 %newval_shifted, 280375465082880 

  %combined = or i64 %newval_masked, %oldval_keep
  store volatile i64 %combined, i64* %existing

  ret void
}


define void @test_32bit_complexmask(i32 *%existing, i32 *%new) {





  %oldval = load volatile i32, i32* %existing
  %oldval_keep = and i32 %oldval, 647 

  %newval = load volatile i32, i32* %new
  %newval_shifted = shl i32 %newval, 3
  %newval_masked = and i32 %newval_shifted, 120 

  %combined = or i32 %oldval_keep, %newval_masked
  store volatile i32 %combined, i32* %existing

  ret void
}


define void @test_32bit_badmask(i32 *%existing, i32 *%new) {





  %oldval = load volatile i32, i32* %existing
  %oldval_keep = and i32 %oldval, 135 

  %newval = load volatile i32, i32* %new
  %newval_shifted = shl i32 %newval, 3
  %newval_masked = and i32 %newval_shifted, 632 

  %combined = or i32 %oldval_keep, %newval_masked
  store volatile i32 %combined, i32* %existing

  ret void
}


define void @test_64bit_badmask(i64 *%existing, i64 *%new) {





  %oldval = load volatile i64, i64* %existing
  %oldval_keep = and i64 %oldval, 135 

  %newval = load volatile i64, i64* %new
  %newval_shifted = shl i64 %newval, 3
  %newval_masked = and i64 %newval_shifted, 664 

  %combined = or i64 %oldval_keep, %newval_masked
  store volatile i64 %combined, i64* %existing

  ret void
}



define void @test_32bit_with_shr(i32* %existing, i32* %new) {


  %oldval = load volatile i32, i32* %existing
  %oldval_keep = and i32 %oldval, 2214592511 

  %newval = load i32, i32* %new
  %newval_shifted = shl i32 %newval, 12
  %newval_masked = and i32 %newval_shifted, 2080374784 

  %combined = or i32 %oldval_keep, %newval_masked
  store volatile i32 %combined, i32* %existing



  ret void
}
