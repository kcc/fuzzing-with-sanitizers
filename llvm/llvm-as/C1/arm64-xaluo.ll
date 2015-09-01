





define zeroext i1 @saddo1.i32(i32 %v1, i32 %v2, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.sadd.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}


define zeroext i1 @saddo2.i32(i32 %v1, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.sadd.with.overflow.i32(i32 %v1, i32 4)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}


define zeroext i1 @saddo3.i32(i32 %v1, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.sadd.with.overflow.i32(i32 %v1, i32 -4)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}


define zeroext i1 @saddo4.i32(i32 %v1, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.sadd.with.overflow.i32(i32 %v1, i32 16777215)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}


define zeroext i1 @saddo5.i32(i32 %v1, i32 %v2, i32* %res) {
entry:



  %lsl = shl i32 %v2, 16
  %t = call {i32, i1} @llvm.sadd.with.overflow.i32(i32 %v1, i32 %lsl)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}

define zeroext i1 @saddo1.i64(i64 %v1, i64 %v2, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %v1, i64 %v2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}

define zeroext i1 @saddo2.i64(i64 %v1, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %v1, i64 4)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
  ret i1 %obit
}

define zeroext i1 @saddo3.i64(i64 %v1, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.sadd.with.overflow.i64(i64 %v1, i64 -4)
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

define zeroext i1 @ssubo1.i32(i32 %v1, i32 %v2, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.ssub.with.overflow.i32(i32 %v1, i32 %v2)
  %val = extractvalue {i32, i1} %t, 0
  %obit = extractvalue {i32, i1} %t, 1
  store i32 %val, i32* %res
  ret i1 %obit
}

define zeroext i1 @ssubo2.i32(i32 %v1, i32* %res) {
entry:



  %t = call {i32, i1} @llvm.ssub.with.overflow.i32(i32 %v1, i32 -4)
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

define zeroext i1 @smulo2.i64(i64 %v1, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %v1, i64 2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  store i64 %val, i64* %res
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

define zeroext i1 @umulo2.i64(i64 %v1, i64* %res) {
entry:



  %t = call {i64, i1} @llvm.umul.with.overflow.i64(i64 %v1, i64 2)
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
  br i1 %obit, label %overflow, label %continue

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
  br i1 %obit, label %overflow, label %continue

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
  br i1 %obit, label %overflow, label %continue

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
  br i1 %obit, label %overflow, label %continue

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
  br i1 %obit, label %overflow, label %continue

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
  br i1 %obit, label %overflow, label %continue

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
  br i1 %obit, label %overflow, label %continue

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
  br i1 %obit, label %overflow, label %continue

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
  br i1 %obit, label %overflow, label %continue

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
  br i1 %obit, label %overflow, label %continue

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @smulo2.br.i64(i64 %v1) {
entry:



  %t = call {i64, i1} @llvm.smul.with.overflow.i64(i64 %v1, i64 2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  br i1 %obit, label %overflow, label %continue

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
  br i1 %obit, label %overflow, label %continue

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
  br i1 %obit, label %overflow, label %continue

overflow:
  ret i1 false

continue:
  ret i1 true
}

define zeroext i1 @umulo2.br.i64(i64 %v1) {
entry:



  %t = call {i64, i1} @llvm.umul.with.overflow.i64(i64 %v1, i64 2)
  %val = extractvalue {i64, i1} %t, 0
  %obit = extractvalue {i64, i1} %t, 1
  br i1 %obit, label %overflow, label %continue

overflow:
  ret i1 false

continue:
  ret i1 true
}

declare {i32, i1} @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone
declare {i32, i1} @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.uadd.with.overflow.i64(i64, i64) nounwind readnone
declare {i32, i1} @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone
declare {i32, i1} @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.usub.with.overflow.i64(i64, i64) nounwind readnone
declare {i32, i1} @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.smul.with.overflow.i64(i64, i64) nounwind readnone
declare {i32, i1} @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone
declare {i64, i1} @llvm.umul.with.overflow.i64(i64, i64) nounwind readnone

