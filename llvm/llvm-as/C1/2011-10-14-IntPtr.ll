




target triple = "x86_64-apple-darwin"




define void @test(i32 %rowStride) ssp align 2 {
entry:
  %cond = select i1 undef, i32 %rowStride, i32 4
  br label %for.end

for.end.critedge:                                 
  br label %for.end

for.end:                                          
  br i1 undef, label %for.body83, label %for.end.critedge

for.body83:                                       
  %ptr.0157 = phi i8* [ %add.ptr96, %for.body83 ], [ null, %for.end ]
  store i8 undef, i8* %ptr.0157, align 1
  %add.ptr96 = getelementptr inbounds i8, i8* %ptr.0157, i32 %cond
  br label %for.body83
}
