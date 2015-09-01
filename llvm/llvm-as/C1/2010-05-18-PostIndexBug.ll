



%struct.foo = type { i64, i64 }

define zeroext i8 @t(%struct.foo* %this, i1 %tst) noreturn optsize {
entry:










  %0 = getelementptr inbounds %struct.foo, %struct.foo* %this, i32 0, i32 1 
  store i32 0, i32* inttoptr (i32 8 to i32*), align 8
  br i1 %tst, label %bb.nph96, label %bb3

bb3:                                              
  %1 = load i64, i64* %0, align 4                      
  ret i8 42

bb.nph96:                                         
  ret i8 3
}
