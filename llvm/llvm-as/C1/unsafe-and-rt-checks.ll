





target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"




















@B = common global i16* null, align 8
@A = common global i16* null, align 8
@C = common global i16* null, align 8

define void @f() {
entry:
  %a = load i16*, i16** @A, align 8
  %b = load i16*, i16** @B, align 8
  %c = load i16*, i16** @C, align 8
  br label %for.body

for.body:                                         
  %storemerge3 = phi i64 [ 0, %entry ], [ %add, %for.body ]

  %arrayidxA = getelementptr inbounds i16, i16* %a, i64 %storemerge3
  %loadA = load i16, i16* %arrayidxA, align 2

  %arrayidxB = getelementptr inbounds i16, i16* %b, i64 %storemerge3
  %loadB = load i16, i16* %arrayidxB, align 2

  %arrayidxC = getelementptr inbounds i16, i16* %c, i64 %storemerge3
  %loadC = load i16, i16* %arrayidxC, align 2

  %mul = mul i16 %loadB, %loadA
  %mul1 = mul i16 %mul, %loadC

  %add = add nuw nsw i64 %storemerge3, 1
  %arrayidxA_plus_2 = getelementptr inbounds i16, i16* %a, i64 %add
  store i16 %mul1, i16* %arrayidxA_plus_2, align 2

  %exitcond = icmp eq i64 %add, 20
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}
