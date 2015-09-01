


































target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"








define void @f(i8** noalias %A, i8* noalias %B, i64 %N) {
for_i.preheader:
  %prev_0 = load i8*, i8** %A, align 8
  br label %for_i.body

for_i.body:
  %i = phi i64 [1, %for_i.preheader], [%i.1, %for_j.end]
  %prev = phi i8* [%prev_0, %for_i.preheader], [%curr, %for_j.end]
  %gep = getelementptr inbounds i8*, i8** %A, i64 %i
  %curr = load i8*, i8** %gep, align 8
  br label %for_j.preheader

for_j.preheader:
  br label %for_j.body

for_j.body:
  %j = phi i64 [0, %for_j.preheader], [%j.1, %for_j.body]

  %gepPrev = getelementptr inbounds i8, i8* %prev, i64 %j
  %gepCurr = getelementptr inbounds i8, i8* %curr, i64 %j
  %gepB = getelementptr inbounds i8, i8* %B, i64 %j

  %loadPrev = load i8, i8* %gepPrev, align 1
  %loadB = load i8, i8* %gepB, align 1

  %mul = mul i8 %loadPrev, %loadB

  store i8 %mul, i8* %gepCurr, align 1

  %gepB_plus_one = getelementptr inbounds i8, i8* %gepB, i64 1
  store i8 2, i8* %gepB_plus_one, align 1

  %j.1 = add nuw i64 %j, 1
  %exitcondj = icmp eq i64 %j.1, %N
  br i1 %exitcondj, label %for_j.end, label %for_j.body

for_j.end:

  %i.1 = add nuw i64 %i, 1
  %exitcond = icmp eq i64 %i.1, %N
  br i1 %exitcond, label %for_i.end, label %for_i.body

for_i.end:
  ret void
}
