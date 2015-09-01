








define fastcc zeroext i8 @fullGtU(i32 %i1, i32 %i2, i8* %ptr) nounwind optsize {
entry:
  %0 = add i32 %i2, 1           
  %1 = sext i32 %0 to i64               
  %2 = getelementptr i8, i8* %ptr, i64 %1           
  %3 = load i8, i8* %2, align 1             
  %4 = icmp eq i8 0, %3         
  br i1 %4, label %bb3, label %bb34

bb3:            
  %5 = add i32 %i2, 4           
  %6 = trunc i32 %5 to i8
  ret i8 %6

bb34:           
  ret i8 0
}

