






define zeroext i1 @saddo.i8(i8 signext %v1, i8 signext %v2, i8* %res) {
entry:



  %t = call {i8, i1} @llvm.sadd.with.overflow.i8(i8 %v1, i8 %v2)
  %val = extractvalue {i8, i1} %t, 0
  %obit = extractvalue {i8, i1} %t, 1
  store i8 %val, i8* %res
  ret i1 %obit
}

define zeroext i1 @saddo.i16(i16 %v1, i16 %v2, i16* %res) {
entry:



  %t = call {i16, i1} @llvm.sadd.with.overflow.i16(i16 %v1, i16 %v2)
  %val = extractvalue {i16, i1} %t, 0
  %obit = extractvalue {i16, i1} %t, 1
  store i16 %val, i16* %res
  ret i1 %obit
}

define zeroext i1 @saddo.i32(i32 %v1, i32 %v2, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.sadd.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}

define zeroext i1 @saddo.i64(i64 %v1, i64 %v2, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}


define zeroext i1 @saddo.inc.i8(i8 %v1, i8* %res) {
entry:



  %t = call {i8, i1} @llvm.sadd.with.overflow.i8(i8 %v1, i8 1)
  %val = extractvalue {i8, i1} %t, 0
  %obit = extractvalue {i8, i1} %t, 1
  store i8 %val, i8* %res
  ret i1 %obit
}

define zeroext i1 @saddo.inc.i16(i16 %v1, i16* %res) {
entry:



  %t = call {i16, i1} @llvm.sadd.with.overflow.i16(i16 %v1, i16 1)
  %val = extractvalue {i16, i1} %t, 0
  %obit = extractvalue {i16, i1} %t, 1
  store i16 %val, i16* %res
  ret i1 %obit
}

define zeroext i1 @saddo.inc.i32(i32 %v1, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.sadd.with.overflow.i32(i32 %v1, i32 1)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}

define zeroext i1 @saddo.inc.i64(i64 %v1, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %v1, i64 1)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}



define zeroext i1 @saddo.i64imm1(i64 %v1, i64* %res) {
entry:







  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 2, i64 %v1)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}


define zeroext i1 @saddo.i64imm2(i64 %v1, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %v1, i64 -2147483648)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}

define zeroext i1 @saddo.i64imm3(i64 %v1, i64* %res) {
entry:




  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %v1, i64 -21474836489)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}

define zeroext i1 @saddo.i64imm4(i64 %v1, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %v1, i64 2147483647)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}

define zeroext i1 @saddo.i64imm5(i64 %v1, i64* %res) {
entry:




  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %v1, i64 2147483648)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}


define zeroext i1 @uaddo.i32(i32 %v1, i32 %v2, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.uadd.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}

define zeroext i1 @uaddo.i64(i64 %v1, i64 %v2, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.uadd.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}


define zeroext i1 @uaddo.inc.i8(i8 %v1, i8* %res) {
entry:


  %t = call {i8, i1} @llvm.uadd.with.overflow.i8(i8 %v1, i8 1)
  %val = extractvalue {i8, i1} %t, 0
  %obit = extractvalue {i8, i1} %t, 1
  store i8 %val, i8* %res
  ret i1 %obit
}

define zeroext i1 @uaddo.inc.i16(i16 %v1, i16* %res) {
entry:


  %t = call {i16, i1} @llvm.uadd.with.overflow.i16(i16 %v1, i16 1)
  %val = extractvalue {i16, i1} %t, 0
  %obit = extractvalue {i16, i1} %t, 1
  store i16 %val, i16* %res
  ret i1 %obit
}

define zeroext i1 @uaddo.inc.i32(i32 %v1, i32* %res) {
entry:


  %t = call {i32, i1} @llvm.uadd.with.overflow.i32(i32 %v1, i32 1)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}

define zeroext i1 @uaddo.inc.i64(i64 %v1, i64* %res) {
entry:


  %t = call {i64, i1} @llvm.uadd.with.overflow.i64(i64 %v1, i64 1)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}


define zeroext i1 @ssubo.i32(i32 %v1, i32 %v2, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.ssub.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}

define zeroext i1 @ssubo.i64(i64 %v1, i64 %v2, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}


define zeroext i1 @usubo.i32(i32 %v1, i32 %v2, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.usub.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}

define zeroext i1 @usubo.i64(i64 %v1, i64 %v2, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.usub.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}


define zeroext i1 @smulo.i8(i8 %v1, i8 %v2, i8* %res) {
entry:




  %t = call {i8, i1} @llvm.smul.with.overflow.i8(i8 %v1, i8 %v2)
  %val = extractvalue {i8, i1} %t, 0
  %obit = extractvalue {i8, i1} %t, 1
  store i8 %val, i8* %res
  ret i1 %obit
}

define zeroext i1 @smulo.i16(i16 %v1, i16 %v2, i16* %res) {
entry:



  %t = call {i16, i1} @llvm.smul.with.overflow.i16(i16 %v1, i16 %v2)
  %val = extractvalue {i16, i1} %t, 0
  %obit = extractvalue {i16, i1} %t, 1
  store i16 %val, i16* %res
  ret i1 %obit
}

define zeroext i1 @smulo.i32(i32 %v1, i32 %v2, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.smul.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}

define zeroext i1 @smulo.i64(i64 %v1, i64 %v2, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}


define zeroext i1 @umulo.i8(i8 %v1, i8 %v2, i8* %res) {
entry:




  %t = call {i8, i1} @llvm.umul.with.overflow.i8(i8 %v1, i8 %v2)
  %val = extractvalue {i8, i1} %t, 0
  %obit = extractvalue {i8, i1} %t, 1
  store i8 %val, i8* %res
  ret i1 %obit
}

define zeroext i1 @umulo.i16(i16 %v1, i16 %v2, i16* %res) {
entry:



  %t = call {i16, i1} @llvm.umul.with.overflow.i16(i16 %v1, i16 %v2)
  %val = extractvalue {i16, i1} %t, 0
  %obit = extractvalue {i16, i1} %t, 1
  store i16 %val, i16* %res
  ret i1 %obit
}

define zeroext i1 @umulo.i32(i32 %v1, i32 %v2, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.umul.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}

define zeroext i1 @umulo.i64(i64 %v1, i64 %v2, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.umul.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}




define i32 @saddo.select.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.sadd.with.overflow.i32(i32 %v1, i32 %v2)
  %obit = extractvalue {i32, i1} %t, 1
  %ret = select i1 %obit, i32 %v1, i32 %v2
  ret i32 %ret
}

define i64 @saddo.select.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %v1, i64 %v2)
  %obit = extractvalue {i64, i1} %t, 1
  %ret = select i1 %obit, i64 %v1, i64 %v2
  ret i64 %ret
}

define i32 @uaddo.select.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.uadd.with.overflow.i32(i32 %v1, i32 %v2)
  %obit = extractvalue {i32, i1} %t, 1
  %ret = select i1 %obit, i32 %v1, i32 %v2
  ret i32 %ret
}

define i64 @uaddo.select.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.uadd.with.overflow.i64(i64 %v1, i64 %v2)
  %obit = extractvalue {i64, i1} %t, 1
  %ret = select i1 %obit, i64 %v1, i64 %v2
  ret i64 %ret
}

define i32 @ssubo.select.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.ssub.with.overflow.i32(i32 %v1, i32 %v2)
  %obit = extractvalue {i32, i1} %t, 1
  %ret = select i1 %obit, i32 %v1, i32 %v2
  ret i32 %ret
}

define i64 @ssubo.select.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %v1, i64 %v2)
  %obit = extractvalue {i64, i1} %t, 1
  %ret = select i1 %obit, i64 %v1, i64 %v2
  ret i64 %ret
}

define i32 @usubo.select.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.usub.with.overflow.i32(i32 %v1, i32 %v2)
  %obit = extractvalue {i32, i1} %t, 1
  %ret = select i1 %obit, i32 %v1, i32 %v2
  ret i32 %ret
}

define i64 @usubo.select.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.usub.with.overflow.i64(i64 %v1, i64 %v2)
  %obit = extractvalue {i64, i1} %t, 1
  %ret = select i1 %obit, i64 %v1, i64 %v2
  ret i64 %ret
}

define i32 @smulo.select.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.smul.with.overflow.i32(i32 %v1, i32 %v2)
  %obit = extractvalue {i32, i1} %t, 1
  %ret = select i1 %obit, i32 %v1, i32 %v2
  ret i32 %ret
}

define i64 @smulo.select.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %v1, i64 %v2)
  %obit = extractvalue {i64, i1} %t, 1
  %ret = select i1 %obit, i64 %v1, i64 %v2
  ret i64 %ret
}

define i32 @umulo.select.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.umul.with.overflow.i32(i32 %v1, i32 %v2)
  %obit = extractvalue {i32, i1} %t, 1
  %ret = select i1 %obit, i32 %v1, i32 %v2
  ret i32 %ret
}

define i64 @umulo.select.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.umul.with.overflow.i64(i64 %v1, i64 %v2)
  %obit = extractvalue {i64, i1} %t, 1
  %ret = select i1 %obit, i64 %v1, i64 %v2
  ret i64 %ret
}





define zeroext i1 @saddo.br.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.sadd.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @saddo.br.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @uaddo.br.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.uadd.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @uaddo.br.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.uadd.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @ssubo.br.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.ssub.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @ssubo.br.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.ssub.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @usubo.br.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.usub.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @usubo.br.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.usub.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @smulo.br.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.smul.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @smulo.br.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @umulo.br.i32(i32 %v1, i32 %v2) {
entry:



  %t = call {i32, i1} @llvm.umul.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @umulo.br.i64(i64 %v1, i64 %v2) {
entry:



  %t = call {i64, i1} @llvm.umul.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  br i1 %obit, label %overflow, label %continue, !prof !0

overflow:
  ret i1 false

continue:
  ret i1 true
}

declare {i8,  i1} @llvm.sadd.with.overflow.i8 (i8,  i8 ) nounwind readnone
declare {i16, i1} @llvm.sadd.with.overflow.i16(i16, i16) nounwind readnone
declare {i32, i1} @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone
declare {i8,  i1} @llvm.uadd.with.overflow.i8 (i8,  i8 ) nounwind readnone
declare {i16, i1} @llvm.uadd.with.overflow.i16(i16, i16) nounwind readnone
declare {i32, i1} @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.uadd.with.overflow.i64(i64, i64) nounwind readnone
declare {i32, i1} @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone
declare {i32, i1} @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.usub.with.overflow.i64(i64, i64) nounwind readnone
declare {i8,  i1} @llvm.smul.with.overflow.i8 (i8,  i8 ) nounwind readnone
declare {i16, i1} @llvm.smul.with.overflow.i16(i16, i16) nounwind readnone
declare {i32, i1} @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone
declare {i8,  i1} @llvm.umul.with.overflow.i8 (i8,  i8 ) nounwind readnone
declare {i16, i1} @llvm.umul.with.overflow.i16(i16, i16) nounwind readnone
declare {i32, i1} @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.umul.with.overflow.i64(i64, i64) nounwind readnone

!0 = !{!"branch_weights", i32 0, i32 2147483647}
