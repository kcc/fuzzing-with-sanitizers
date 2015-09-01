target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"







define double @test1(i64* %a, i64* %b, i64* %c) nounwind uwtable readonly {
entry:
  %i0 = load i64, i64* %a, align 8
  %i1 = load i64, i64* %b, align 8
  %mul = mul i64 %i0, %i1
  %arrayidx3 = getelementptr inbounds i64, i64* %a, i64 1
  %i3 = load i64, i64* %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %b, i64 1
  %i4 = load i64, i64* %arrayidx4, align 8
  %mul5 = mul i64 %i3, %i4
  %ptr = inttoptr i64 %mul to double*
  %ptr5 = inttoptr i64 %mul5 to double*
  %aptr = getelementptr inbounds double, double* %ptr, i64 2
  %aptr5 = getelementptr inbounds double, double* %ptr5, i64 3
  %av = load double, double* %aptr, align 16
  %av5 = load double, double* %aptr5, align 16
  %r = fmul double %av, %av5
  store i64 %mul, i64* %c, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %c, i64 1
  store i64 %mul5, i64* %arrayidx5, align 8
  ret double %r


















}


define void @test2(i64** %a, i64** %b, i64** %c) nounwind uwtable readonly {
entry:
  %i0 = load i64*, i64** %a, align 8
  %i1 = load i64*, i64** %b, align 8
  %arrayidx3 = getelementptr inbounds i64*, i64** %a, i64 1
  %i3 = load i64*, i64** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i64*, i64** %b, i64 1
  %i4 = load i64*, i64** %arrayidx4, align 8
  %o1 = load i64, i64* %i1, align 8
  %o4 = load i64, i64* %i4, align 8
  %ptr0 = getelementptr inbounds i64, i64* %i0, i64 %o1
  %ptr3 = getelementptr inbounds i64, i64* %i3, i64 %o4
  store i64* %ptr0, i64** %c, align 8
  %arrayidx5 = getelementptr inbounds i64*, i64** %c, i64 1
  store i64* %ptr3, i64** %arrayidx5, align 8
  ret void
















}



define void @test3(<2 x i64*>* %a, <2 x i64*>* %b, <2 x i64*>* %c) nounwind uwtable readonly {
entry:
  %i0 = load <2 x i64*>, <2 x i64*>* %a, align 8
  %i1 = load <2 x i64*>, <2 x i64*>* %b, align 8
  %arrayidx3 = getelementptr inbounds <2 x i64*>, <2 x i64*>* %a, i64 1
  %i3 = load <2 x i64*>, <2 x i64*>* %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds <2 x i64*>, <2 x i64*>* %b, i64 1
  %i4 = load <2 x i64*>, <2 x i64*>* %arrayidx4, align 8
  %j1 = extractelement <2 x i64*> %i1, i32 0
  %j4 = extractelement <2 x i64*> %i4, i32 0
  %o1 = load i64, i64* %j1, align 8
  %o4 = load i64, i64* %j4, align 8
  %j0 = extractelement <2 x i64*> %i0, i32 0
  %j3 = extractelement <2 x i64*> %i3, i32 0
  %ptr0 = getelementptr inbounds i64, i64* %j0, i64 %o1
  %ptr3 = getelementptr inbounds i64, i64* %j3, i64 %o4
  %qtr0 = insertelement <2 x i64*> undef, i64* %ptr0, i32 0
  %rtr0 = insertelement <2 x i64*> %qtr0, i64* %ptr0, i32 1
  %qtr3 = insertelement <2 x i64*> undef, i64* %ptr3, i32 0
  %rtr3 = insertelement <2 x i64*> %qtr3, i64* %ptr3, i32 1
  store <2 x i64*> %rtr0, <2 x i64*>* %c, align 8
  %arrayidx5 = getelementptr inbounds <2 x i64*>, <2 x i64*>* %c, i64 1
  store <2 x i64*> %rtr3, <2 x i64*>* %arrayidx5, align 8
  ret void






















}

