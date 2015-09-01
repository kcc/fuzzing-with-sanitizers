


define i32 @t() nounwind ssp {
entry:
  br label %if.end.i11

if.end.i11:                                       
  br i1 undef, label %for.body161, label %for.end197

for.body161:                                      
  br label %for.end197

for.end197:                                       
  %mlucEntry.4 = phi i96 [ undef, %for.body161 ], [ undef, %if.end.i11 ] 
  store i96 %mlucEntry.4, i96* undef, align 8
  %tmp172 = lshr i96 %mlucEntry.4, 64             
  %tmp173 = trunc i96 %tmp172 to i32              
  %tmp1.i1.i = call i32 @llvm.bswap.i32(i32 %tmp173) nounwind 
  store i32 %tmp1.i1.i, i32* undef, align 8
  unreachable

if.then283:                                       
  ret i32 undef
}

declare i32 @llvm.bswap.i32(i32) nounwind readnone
