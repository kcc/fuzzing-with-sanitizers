
















%ty = type { i8* }

@gv = external global i32



















define i8* @test0(i64 %size) {
  %addr = alloca i64, align 8
  %tmp20 = load i32, i32* @gv, align 4
  %tmp21 = call i32 @bar()
  %tmp25 = load i64, i64* %addr, align 8
  %tmp26 = inttoptr i64 %tmp25 to %ty*
  %tmp29 = getelementptr inbounds %ty, %ty* %tmp26, i64 0, i32 0
  %tmp34 = load i8*, i8** %tmp29, align 8
  %tmp35 = getelementptr inbounds i8, i8* %tmp34, i64 %size
  store i8* %tmp35, i8** %tmp29, align 8
  ret i8* null
}

declare i32 @bar()

%"struct.dyld::MappedRanges" = type { [400 x %struct.anon], %"struct.dyld::MappedRanges"* }
%struct.anon = type { %class.ImageLoader*, i64, i64 }
%class.ImageLoader = type { i32 (...)**, i8*, i8*, i32, i64, i64, i32, i32, %"struct.ImageLoader::recursive_lock"*, i16, i16, [4 x i8] }
%"struct.ImageLoader::recursive_lock" = type { i32, i32 }

@G1 = external hidden global %"struct.dyld::MappedRanges", align 8

declare void @OSMemoryBarrier() optsize














define void @test1(%class.ImageLoader* %image) optsize ssp uwtable {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              
  %p.019 = phi %"struct.dyld::MappedRanges"* [ @G1, %entry ], [ %1, %for.inc10 ]
  br label %for.body3

for.body3:                                        
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %image4 = getelementptr inbounds %"struct.dyld::MappedRanges", %"struct.dyld::MappedRanges"* %p.019, i64 0, i32 0, i64 %indvars.iv, i32 0
  %0 = load %class.ImageLoader*, %class.ImageLoader** %image4, align 8
  %cmp5 = icmp eq %class.ImageLoader* %0, %image
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          
  tail call void @OSMemoryBarrier() optsize
  store %class.ImageLoader* null, %class.ImageLoader** %image4, align 8
  br label %for.inc

for.inc:                                          
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 400
  br i1 %exitcond, label %for.inc10, label %for.body3

for.inc10:                                        
  %next = getelementptr inbounds %"struct.dyld::MappedRanges", %"struct.dyld::MappedRanges"* %p.019, i64 0, i32 1
  %1 = load %"struct.dyld::MappedRanges"*, %"struct.dyld::MappedRanges"** %next, align 8
  %cmp = icmp eq %"struct.dyld::MappedRanges"* %1, null
  br i1 %cmp, label %for.end11, label %for.cond1.preheader

for.end11:                                        
  ret void
}
