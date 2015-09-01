



define zeroext i8 @gep_promotion(i8* %ptr) nounwind uwtable ssp {
entry:
  %ptr.addr = alloca i8*, align 8
  %add = add i8 64, 64 
  %0 = load i8*, i8** %ptr.addr, align 8

  
  
  %arrayidx = getelementptr inbounds i8, i8* %0, i8 %add

  %1 = load i8, i8* %arrayidx, align 1
  ret i8 %1
}

