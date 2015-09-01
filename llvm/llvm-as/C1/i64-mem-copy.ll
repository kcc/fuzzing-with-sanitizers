






define void @foo(i64* %x, i64* %y) {













  %tmp1 = load i64, i64* %y, align 8
  store i64 %tmp1, i64* %x, align 8
  ret void
}




define void @store_i64_from_vector(<8 x i16> %x, <8 x i16> %y, i64* %i) {












  %z = add <8 x i16> %x, %y                          
  %bc = bitcast <8 x i16> %z to <2 x i64>
  %vecext = extractelement <2 x i64> %bc, i32 0
  store i64 %vecext, i64* %i, align 8
  ret void
}

define void @store_i64_from_vector256(<16 x i16> %x, <16 x i16> %y, i64* %i) {








  %z = add <16 x i16> %x, %y                          
  %bc = bitcast <16 x i16> %z to <4 x i64>
  %vecext = extractelement <4 x i64> %bc, i32 2
  store i64 %vecext, i64* %i, align 8
  ret void
}




define void @PR23476(<5 x i64> %in, i64* %out, i32 %index) {



  %ext = extractelement <5 x i64> %in, i32 %index
  store i64 %ext, i64* %out, align 8
  ret void
}
