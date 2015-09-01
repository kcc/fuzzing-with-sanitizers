


declare {i8, i1} @llvm.uadd.with.overflow.i8(i8, i8)
declare {i8, i1} @llvm.usub.with.overflow.i8(i8, i8)
declare {i8, i1} @llvm.umul.with.overflow.i8(i8, i8)

declare {i8, i1} @llvm.sadd.with.overflow.i8(i8, i8)
declare {i8, i1} @llvm.ssub.with.overflow.i8(i8, i8)
declare {i8, i1} @llvm.smul.with.overflow.i8(i8, i8)





define {i8, i1} @uadd_1() nounwind {
entry:
  %t = call {i8, i1} @llvm.uadd.with.overflow.i8(i8 42, i8 100)
  ret {i8, i1} %t



}

define {i8, i1} @uadd_2() nounwind {
entry:
  %t = call {i8, i1} @llvm.uadd.with.overflow.i8(i8 142, i8 120)
  ret {i8, i1} %t



}





define {i8, i1} @usub_1() nounwind {
entry:
  %t = call {i8, i1} @llvm.usub.with.overflow.i8(i8 4, i8 2)
  ret {i8, i1} %t



}

define {i8, i1} @usub_2() nounwind {
entry:
  %t = call {i8, i1} @llvm.usub.with.overflow.i8(i8 4, i8 6)
  ret {i8, i1} %t



}





define {i8, i1} @umul_1() nounwind {
entry:
  %t = call {i8, i1} @llvm.umul.with.overflow.i8(i8 100, i8 3)
  ret {i8, i1} %t



}

define {i8, i1} @umul_2() nounwind {
entry:
  %t = call {i8, i1} @llvm.umul.with.overflow.i8(i8 100, i8 2)
  ret {i8, i1} %t



}





define {i8, i1} @sadd_1() nounwind {
entry:
  %t = call {i8, i1} @llvm.sadd.with.overflow.i8(i8 42, i8 2)
  ret {i8, i1} %t



}

define {i8, i1} @sadd_2() nounwind {
entry:
  %t = call {i8, i1} @llvm.sadd.with.overflow.i8(i8 120, i8 10)
  ret {i8, i1} %t



}

define {i8, i1} @sadd_3() nounwind {
entry:
  %t = call {i8, i1} @llvm.sadd.with.overflow.i8(i8 -120, i8 10)
  ret {i8, i1} %t



}

define {i8, i1} @sadd_4() nounwind {
entry:
  %t = call {i8, i1} @llvm.sadd.with.overflow.i8(i8 -120, i8 -10)
  ret {i8, i1} %t



}

define {i8, i1} @sadd_5() nounwind {
entry:
  %t = call {i8, i1} @llvm.sadd.with.overflow.i8(i8 2, i8 -10)
  ret {i8, i1} %t



}






define {i8, i1} @ssub_1() nounwind {
entry:
  %t = call {i8, i1} @llvm.ssub.with.overflow.i8(i8 4, i8 2)
  ret {i8, i1} %t



}

define {i8, i1} @ssub_2() nounwind {
entry:
  %t = call {i8, i1} @llvm.ssub.with.overflow.i8(i8 4, i8 6)
  ret {i8, i1} %t



}

define {i8, i1} @ssub_3() nounwind {
entry:
  %t = call {i8, i1} @llvm.ssub.with.overflow.i8(i8 -10, i8 120)
  ret {i8, i1} %t



}

define {i8, i1} @ssub_3b() nounwind {
entry:
  %t = call {i8, i1} @llvm.ssub.with.overflow.i8(i8 -10, i8 10)
  ret {i8, i1} %t



}

define {i8, i1} @ssub_4() nounwind {
entry:
  %t = call {i8, i1} @llvm.ssub.with.overflow.i8(i8 120, i8 -10)
  ret {i8, i1} %t



}

define {i8, i1} @ssub_4b() nounwind {
entry:
  %t = call {i8, i1} @llvm.ssub.with.overflow.i8(i8 20, i8 -10)
  ret {i8, i1} %t



}

define {i8, i1} @ssub_5() nounwind {
entry:
  %t = call {i8, i1} @llvm.ssub.with.overflow.i8(i8 -20, i8 -10)
  ret {i8, i1} %t



}






define {i8, i1} @smul_1() nounwind {
entry:
  %t = call {i8, i1} @llvm.smul.with.overflow.i8(i8 -20, i8 -10)
  ret {i8, i1} %t



}
