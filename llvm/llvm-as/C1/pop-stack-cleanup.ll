

declare void @param1(i32 %a)
declare i32 @param2_ret(i32 %a, i32 %b)
declare i64 @param2_ret64(i32 %a, i32 %b)
declare void @param2(i32 %a, i32 %b)
declare void @param3(i32 %a, i32 %b, i32 %c)

define void @test() minsize {















  call void @param1(i32 1)
  call void @param2(i32 1, i32 2)
  %ret = call i32 @param2_ret(i32 1, i32 2)
  call void @param3(i32 1, i32 2, i32 %ret)
  %ret64 = call i64 @param2_ret64(i32 1, i32 2)  
  ret void
}

define void @negative(i32 %k) {







  %v = alloca i32, i32 %k
  call void @param1(i32 1)
  call void @param2(i32 1, i32 2)
  call void @param3(i32 1, i32 2, i32 3)
  ret void
}

define void @spill(i32 inreg %a, i32 inreg %b, i32 inreg %c) minsize {









  %i = call i32 @param2_ret(i32 1, i32 2)
  call void @spill(i32 %a, i32 %b, i32 %c)
  ret void
}
