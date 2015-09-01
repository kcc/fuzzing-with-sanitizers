












target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@B = common global i32* null, align 8
@A = common global i32* null, align 8
@C = common global i32* null, align 8
@D = common global i32* null, align 8
@E = common global i32* null, align 8
@SUM = common global i32 0, align 8

define void @f() {
entry:
  %a = load i32*, i32** @A, align 8
  %b = load i32*, i32** @B, align 8
  %c = load i32*, i32** @C, align 8
  %d = load i32*, i32** @D, align 8
  %e = load i32*, i32** @E, align 8

  br label %for.body









for.body:                                         
  %ind = phi i64 [ 0, %entry ], [ %add, %for.body ]
  %sum = phi i32 [ 0, %entry ], [ %sum_add, %for.body ]

  %arrayidxA = getelementptr inbounds i32, i32* %a, i64 %ind
  %loadA = load i32, i32* %arrayidxA, align 4

  %arrayidxB = getelementptr inbounds i32, i32* %b, i64 %ind
  %loadB = load i32, i32* %arrayidxB, align 4

  %mulA = mul i32 %loadB, %loadA

  %add = add nuw nsw i64 %ind, 1
  %arrayidxA_plus_4 = getelementptr inbounds i32, i32* %a, i64 %add
  store i32 %mulA, i32* %arrayidxA_plus_4, align 4

  %arrayidxC = getelementptr inbounds i32, i32* %c, i64 %ind
  %loadC = load i32, i32* %arrayidxC, align 4

  %sum_add = add nuw nsw i32 %sum, %loadC

  %exitcond = icmp eq i64 %add, 20
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  store i32 %sum_add, i32* @SUM, align 4
  ret void
}
