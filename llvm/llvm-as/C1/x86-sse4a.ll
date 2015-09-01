



define <2 x i64> @testInsertTwice(<2 x i64> %v, <2 x i64> %i) {


  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 32, i8 32)
  %2 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %1, <2 x i64> %i, i8 32, i8 32)
  ret <2 x i64> %2
}





define <2 x i64> @testInsert64Bits(<2 x i64> %v, <2 x i64> %i) {

  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 64, i8 0)
  ret <2 x i64> %1
}



define <2 x i64> @testInsertContainedRange(<2 x i64> %v, <2 x i64> %i) {


  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 32, i8 0)
  %2 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %1, <2 x i64> %i, i8 16, i8 16)
  ret <2 x i64> %2
}


define <2 x i64> @testInsertContainedRange_2(<2 x i64> %v, <2 x i64> %i) {


  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 16, i8 16)
  %2 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %1, <2 x i64> %i, i8 32, i8 0)
  ret <2 x i64> %2
}


define <2 x i64> @testInsertOverlappingRange(<2 x i64> %v, <2 x i64> %i) {


  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 32, i8 0)
  %2 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %1, <2 x i64> %i, i8 32, i8 16)
  ret <2 x i64> %2
}


define <2 x i64> @testInsertOverlappingRange_2(<2 x i64> %v, <2 x i64> %i) {


  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 32, i8 16)
  %2 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %1, <2 x i64> %i, i8 32, i8 0)
  ret <2 x i64> %2
}


define <2 x i64> @testInsertAdjacentRange(<2 x i64> %v, <2 x i64> %i) {


  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 32, i8 0)
  %2 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %1, <2 x i64> %i, i8 16, i8 32)
  ret <2 x i64> %2
}


define <2 x i64> @testInsertAdjacentRange_2(<2 x i64> %v, <2 x i64> %i) {


  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 16, i8 32)
  %2 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %1, <2 x i64> %i, i8 32, i8 0)
  ret <2 x i64> %2
}


define <2 x i64> @testInsertDisjointRange(<2 x i64> %v, <2 x i64> %i) {


  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 16, i8 0)
  %2 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %1, <2 x i64> %i, i8 16, i8 32)
  ret <2 x i64> %2
}


define <2 x i64> @testInsertDisjointRange_2(<2 x i64> %v, <2 x i64> %i) {


  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 16, i8 0)
  %2 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %1, <2 x i64> %i, i8 16, i8 32)
  ret <2 x i64> %2
}


define <2 x i64> @testZeroLength(<2 x i64> %v, <2 x i64> %i) {

  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 0, i8 0)
  ret <2 x i64> %1
}


define <2 x i64> @testUndefinedInsertq_1(<2 x i64> %v, <2 x i64> %i) {

  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 0, i8 16)
  ret <2 x i64> %1
}


define <2 x i64> @testUndefinedInsertq_2(<2 x i64> %v, <2 x i64> %i) {

  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 48, i8 32)
  ret <2 x i64> %1
}


define <2 x i64> @testUndefinedInsertq_3(<2 x i64> %v, <2 x i64> %i) {

  %1 = tail call <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64> %v, <2 x i64> %i, i8 64, i8 16)
  ret <2 x i64> %1
}


declare <2 x i64> @llvm.x86.sse4a.insertqi(<2 x i64>, <2 x i64>, i8, i8) nounwind
