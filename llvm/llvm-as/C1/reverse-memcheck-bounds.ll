












target datalayout = "e-m:e-i64:64-i128:128-n32:64-S128"
target triple = "aarch64--linux-gnueabi"




@B = common global i32* null, align 8
@A = common global i32* null, align 8

define void @f() {
entry:
  %a = load i32*, i32** @A, align 8
  %b = load i32*, i32** @B, align 8
  br label %for.body

for.body:                                         
  %idx = phi i64 [ 0, %entry ], [ %add, %for.body ]
  %negidx = sub i64 15000, %idx

  %arrayidxA0 = getelementptr inbounds i32, i32* %a, i64 %negidx
  %loadA0 = load i32, i32* %arrayidxA0, align 2

  %res = mul i32 %loadA0, 3

  %add = add nuw nsw i64 %idx, 1

  %arrayidxB = getelementptr inbounds i32, i32* %b, i64 %idx
  store i32 %res, i32* %arrayidxB, align 2

  %exitcond = icmp eq i64 %idx, 10000
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}














define void @g(i64 %step) {
entry:
  %a = load i32*, i32** @A, align 8
  %b = load i32*, i32** @B, align 8
  br label %for.body

for.body:                                         
  %idx = phi i64 [ 0, %entry ], [ %add, %for.body ]
  %idx_mul = mul i64 %idx, %step
  %negidx = sub i64 15000, %idx_mul

  %arrayidxA0 = getelementptr inbounds i32, i32* %a, i64 %negidx
  %loadA0 = load i32, i32* %arrayidxA0, align 2

  %res = mul i32 %loadA0, 3

  %add = add nuw nsw i64 %idx, 1

  %arrayidxB = getelementptr inbounds i32, i32* %b, i64 %idx
  store i32 %res, i32* %arrayidxB, align 2

  %exitcond = icmp eq i64 %idx, 10000
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}
