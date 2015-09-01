





define available_externally hidden 
void @_ZNSbIcED1Ev() nounwind readnone ssp align 2 {
entry:
  ret void
}

define void()* @test1() nounwind {
entry:
  ret void()* @_ZNSbIcED1Ev
}










@.str = private constant [12 x i8] c"hello world\00", align 1 

define hidden void @func() nounwind ssp uwtable {
entry:
  %0 = call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) nounwind 
  br label %return

return:                                           
  ret void
}

declare i32 @puts(i8*)

define hidden i32 @main() nounwind ssp uwtable {
entry:
  %retval = alloca i32                            
  %"alloca point" = bitcast i32 0 to i32          
  call void @func() nounwind
  br label %return

return:                                           
  %retval1 = load i32, i32* %retval                    
  ret i32 %retval1
}
