




























%struct.section_t = type { i32, i32, i32* }

define void @test2(%struct.section_t* noalias nocapture readonly %section, i32* noalias nocapture %dst) {
entry:
  %data13 = getelementptr inbounds %struct.section_t, %struct.section_t* %section, i32 0, i32 2
  %0 = load i32*, i32** %data13, align 4
  %cmp14 = icmp eq i32* %0, null
  br i1 %cmp14, label %while.end, label %for.cond.preheader

for.cond.preheader:                               
  %1 = phi i32* [ %6, %for.end ], [ %0, %entry ]
  %section.addr.015 = phi %struct.section_t* [ %incdec.ptr, %for.end ], [ %section, %entry ]
  %num_words = getelementptr inbounds %struct.section_t, %struct.section_t* %section.addr.015, i32 0, i32 0
  %2 = load i32, i32* %num_words, align 4
  %cmp211 = icmp eq i32 %2, 0
  br i1 %cmp211, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   
  %word_ofs = getelementptr inbounds %struct.section_t, %struct.section_t* %section.addr.015, i32 0, i32 1
  br label %for.body

for.body:                                         
  %arrayidx.phi = phi i32* [ %1, %for.body.lr.ph ], [ %arrayidx.inc, %for.body ]
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %3 = load i32, i32* %arrayidx.phi, align 4
  %4 = load i32, i32* %word_ofs, align 4
  %add = add i32 %4, %i.012
  %arrayidx3 = getelementptr inbounds i32, i32* %dst, i32 %add
  store i32 %3, i32* %arrayidx3, align 4
  %inc = add i32 %i.012, 1
  %5 = load i32, i32* %num_words, align 4
  %cmp2 = icmp ult i32 %inc, %5
  %arrayidx.inc = getelementptr i32, i32* %arrayidx.phi, i32 1
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          
  %incdec.ptr = getelementptr inbounds %struct.section_t, %struct.section_t* %section.addr.015, i32 1
  %data = getelementptr inbounds %struct.section_t, %struct.section_t* %section.addr.015, i32 1, i32 2
  %6 = load i32*, i32** %data, align 4
  %cmp = icmp eq i32* %6, null
  br i1 %cmp, label %while.end, label %for.cond.preheader

while.end:                                        
  ret void
}

