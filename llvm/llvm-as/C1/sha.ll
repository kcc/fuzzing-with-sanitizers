


declare <4 x i32> @llvm.x86.sha1rnds4(<4 x i32>, <4 x i32>, i8) nounwind readnone

define <4 x i32> @test_sha1rnds4rr(<4 x i32> %a, <4 x i32> %b) nounwind uwtable {
entry:
  %0 = tail call <4 x i32> @llvm.x86.sha1rnds4(<4 x i32> %a, <4 x i32> %b, i8 3)
  ret <4 x i32> %0
  
  
}

define <4 x i32> @test_sha1rnds4rm(<4 x i32> %a, <4 x i32>* %b) nounwind uwtable {
entry:
  %0 = load <4 x i32>, <4 x i32>* %b
  %1 = tail call <4 x i32> @llvm.x86.sha1rnds4(<4 x i32> %a, <4 x i32> %0, i8 3)
  ret <4 x i32> %1
  
  
}

declare <4 x i32> @llvm.x86.sha1nexte(<4 x i32>, <4 x i32>) nounwind readnone

define <4 x i32> @test_sha1nexterr(<4 x i32> %a, <4 x i32> %b) nounwind uwtable {
entry:
  %0 = tail call <4 x i32> @llvm.x86.sha1nexte(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %0
  
  
}

define <4 x i32> @test_sha1nexterm(<4 x i32> %a, <4 x i32>* %b) nounwind uwtable {
entry:
  %0 = load <4 x i32>, <4 x i32>* %b
  %1 = tail call <4 x i32> @llvm.x86.sha1nexte(<4 x i32> %a, <4 x i32> %0)
  ret <4 x i32> %1
  
  
}

declare <4 x i32> @llvm.x86.sha1msg1(<4 x i32>, <4 x i32>) nounwind readnone

define <4 x i32> @test_sha1msg1rr(<4 x i32> %a, <4 x i32> %b) nounwind uwtable {
entry:
  %0 = tail call <4 x i32> @llvm.x86.sha1msg1(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %0
  
  
}

define <4 x i32> @test_sha1msg1rm(<4 x i32> %a, <4 x i32>* %b) nounwind uwtable {
entry:
  %0 = load <4 x i32>, <4 x i32>* %b
  %1 = tail call <4 x i32> @llvm.x86.sha1msg1(<4 x i32> %a, <4 x i32> %0)
  ret <4 x i32> %1
  
  
}

declare <4 x i32> @llvm.x86.sha1msg2(<4 x i32>, <4 x i32>) nounwind readnone

define <4 x i32> @test_sha1msg2rr(<4 x i32> %a, <4 x i32> %b) nounwind uwtable {
entry:
  %0 = tail call <4 x i32> @llvm.x86.sha1msg2(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %0
  
  
}

define <4 x i32> @test_sha1msg2rm(<4 x i32> %a, <4 x i32>* %b) nounwind uwtable {
entry:
  %0 = load <4 x i32>, <4 x i32>* %b
  %1 = tail call <4 x i32> @llvm.x86.sha1msg2(<4 x i32> %a, <4 x i32> %0)
  ret <4 x i32> %1
  
  
}

declare <4 x i32> @llvm.x86.sha256rnds2(<4 x i32>, <4 x i32>, <4 x i32>) nounwind readnone

define <4 x i32> @test_sha256rnds2rr(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) nounwind uwtable {
entry:
  %0 = tail call <4 x i32> @llvm.x86.sha256rnds2(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c)
  ret <4 x i32> %0
  
  
  
  
}

define <4 x i32> @test_sha256rnds2rm(<4 x i32> %a, <4 x i32>* %b, <4 x i32> %c) nounwind uwtable {
entry:
  %0 = load <4 x i32>, <4 x i32>* %b
  %1 = tail call <4 x i32> @llvm.x86.sha256rnds2(<4 x i32> %a, <4 x i32> %0, <4 x i32> %c)
  ret <4 x i32> %1
  
  
  
  
}

declare <4 x i32> @llvm.x86.sha256msg1(<4 x i32>, <4 x i32>) nounwind readnone

define <4 x i32> @test_sha256msg1rr(<4 x i32> %a, <4 x i32> %b) nounwind uwtable {
entry:
  %0 = tail call <4 x i32> @llvm.x86.sha256msg1(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %0
  
  
}

define <4 x i32> @test_sha256msg1rm(<4 x i32> %a, <4 x i32>* %b) nounwind uwtable {
entry:
  %0 = load <4 x i32>, <4 x i32>* %b
  %1 = tail call <4 x i32> @llvm.x86.sha256msg1(<4 x i32> %a, <4 x i32> %0)
  ret <4 x i32> %1
  
  
}

declare <4 x i32> @llvm.x86.sha256msg2(<4 x i32>, <4 x i32>) nounwind readnone

define <4 x i32> @test_sha256msg2rr(<4 x i32> %a, <4 x i32> %b) nounwind uwtable {
entry:
  %0 = tail call <4 x i32> @llvm.x86.sha256msg2(<4 x i32> %a, <4 x i32> %b)
  ret <4 x i32> %0
  
  
}

define <4 x i32> @test_sha256msg2rm(<4 x i32> %a, <4 x i32>* %b) nounwind uwtable {
entry:
  %0 = load <4 x i32>, <4 x i32>* %b
  %1 = tail call <4 x i32> @llvm.x86.sha256msg2(<4 x i32> %a, <4 x i32> %0)
  ret <4 x i32> %1
  
  
}