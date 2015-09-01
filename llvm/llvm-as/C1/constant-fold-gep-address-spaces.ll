



target datalayout = "e-p:128:128:128-p1:32:32:32-p2:8:8:8-p3:16:16:16-p4:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:32"





@G8 = global i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* inttoptr (i32 1 to i8 addrspace(1)*), i32 -1)

@G1 = global i1 addrspace(2)* getelementptr (i1, i1 addrspace(2)* inttoptr (i8 1 to i1 addrspace(2)*), i8 -1)

@F8 = global i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* inttoptr (i32 1 to i8 addrspace(1)*), i32 -2)

@F1 = global i1 addrspace(2)* getelementptr (i1, i1 addrspace(2)* inttoptr (i8 1 to i1 addrspace(2)*), i8 -2)

@H8 = global i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* inttoptr (i32 0 to i8 addrspace(1)*), i32 -1)

@H1 = global i1 addrspace(2)* getelementptr (i1, i1 addrspace(2)* inttoptr (i8 0 to i1 addrspace(2)*), i8 -1)






@a = constant i64 mul (i64 3, i64 mul (i64 ptrtoint ({[7 x double], [7 x double]} addrspace(4)* getelementptr ({[7 x double], [7 x double]}, {[7 x double], [7 x double]} addrspace(4)* null, i64 11) to i64), i64 5))


@b = constant i64 ptrtoint ([13 x double] addrspace(4)* getelementptr ({i1, [13 x double]}, {i1, [13 x double]} addrspace(4)* null, i64 0, i32 1) to i64)


@c = constant i64 ptrtoint (double addrspace(4)* getelementptr ({double, double, double, double}, {double, double, double, double} addrspace(4)* null, i64 0, i32 2) to i64)


@d = constant i64 ptrtoint (double addrspace(4)* getelementptr ([13 x double], [13 x double] addrspace(4)* null, i64 0, i32 11) to i64)


@e = constant i64 ptrtoint (double addrspace(4)* getelementptr ({double, float, double, double}, {double, float, double, double} addrspace(4)* null, i64 0, i32 2) to i64)


@f = constant i64 ptrtoint (<{ i16, i128 }> addrspace(4)* getelementptr ({i1, <{ i16, i128 }>}, {i1, <{ i16, i128 }>} addrspace(4)* null, i64 0, i32 1) to i64)


@g = constant i64 ptrtoint ({double, double} addrspace(4)* getelementptr ({i1, {double, double}}, {i1, {double, double}} addrspace(4)* null, i64 0, i32 1) to i64)


@h = constant i64 ptrtoint (double addrspace(4)* getelementptr (double, double addrspace(4)* null, i64 1) to i64)


@i = constant i64 ptrtoint (double addrspace(4)* getelementptr ({i1, double}, {i1, double} addrspace(4)* null, i64 0, i32 1) to i64)







@M = constant i64 addrspace(4)* getelementptr (i64, i64 addrspace(4)* null, i32 1)
@N = constant i64 addrspace(4)* getelementptr ({ i64, i64 }, { i64, i64 } addrspace(4)* null, i32 0, i32 1)
@O = constant i64 addrspace(4)* getelementptr ([2 x i64], [2 x i64] addrspace(4)* null, i32 0, i32 1)




@ext = external addrspace(3) global [3 x { i32, i32 }]
@Y = global [3 x { i32, i32 }]addrspace(3)* getelementptr inbounds ([3 x { i32, i32 }], [3 x { i32, i32 }]addrspace(3)* getelementptr inbounds ([3 x { i32, i32 }], [3 x { i32, i32 }]addrspace(3)* @ext, i64 1), i64 1)


@Z = global i32addrspace(3)* getelementptr inbounds (i32, i32addrspace(3)* getelementptr inbounds ([3 x { i32, i32 }], [3 x { i32, i32 }]addrspace(3)* @ext, i64 0, i64 1, i32 0), i64 1)





























define i8 addrspace(1)* @goo8() #0 {
  %t = bitcast i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* inttoptr (i32 1 to i8 addrspace(1)*), i32 -1) to i8 addrspace(1)*
  ret i8 addrspace(1)* %t
}
define i1 addrspace(2)* @goo1() #0 {
  %t = bitcast i1 addrspace(2)* getelementptr (i1, i1 addrspace(2)* inttoptr (i32 1 to i1 addrspace(2)*), i32 -1) to i1 addrspace(2)*
  ret i1 addrspace(2)* %t
}
define i8 addrspace(1)* @foo8() #0 {
  %t = bitcast i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* inttoptr (i32 1 to i8 addrspace(1)*), i32 -2) to i8 addrspace(1)*
  ret i8 addrspace(1)* %t
}
define i1 addrspace(2)* @foo1() #0 {
  %t = bitcast i1 addrspace(2)* getelementptr (i1, i1 addrspace(2)* inttoptr (i32 1 to i1 addrspace(2)*), i32 -2) to i1 addrspace(2)*
  ret i1 addrspace(2)* %t
}
define i8 addrspace(1)* @hoo8() #0 {
  %t = bitcast i8 addrspace(1)* getelementptr (i8, i8 addrspace(1)* inttoptr (i32 0 to i8 addrspace(1)*), i32 -1) to i8 addrspace(1)*
  ret i8 addrspace(1)* %t
}
define i1 addrspace(2)* @hoo1() #0 {
  %t = bitcast i1 addrspace(2)* getelementptr (i1, i1 addrspace(2)* inttoptr (i32 0 to i1 addrspace(2)*), i32 -1) to i1 addrspace(2)*
  ret i1 addrspace(2)* %t
}





































define i64 @fa() #0 {
  %t = bitcast i64 mul (i64 3, i64 mul (i64 ptrtoint ({[7 x double], [7 x double]}* getelementptr ({[7 x double], [7 x double]}, {[7 x double], [7 x double]}* null, i64 11) to i64), i64 5)) to i64
  ret i64 %t
}
define i64 @fb() #0 {
  %t = bitcast i64 ptrtoint ([13 x double] addrspace(4)* getelementptr ({i1, [13 x double]}, {i1, [13 x double]} addrspace(4)* null, i64 0, i32 1) to i64) to i64
  ret i64 %t
}
define i64 @fc() #0 {
  %t = bitcast i64 ptrtoint (double addrspace(4)* getelementptr ({double, double, double, double}, {double, double, double, double} addrspace(4)* null, i64 0, i32 2) to i64) to i64
  ret i64 %t
}
define i64 @fd() #0 {
  %t = bitcast i64 ptrtoint (double addrspace(4)* getelementptr ([13 x double], [13 x double] addrspace(4)* null, i64 0, i32 11) to i64) to i64
  ret i64 %t
}
define i64 @fe() #0 {
  %t = bitcast i64 ptrtoint (double addrspace(4)* getelementptr ({double, float, double, double}, {double, float, double, double} addrspace(4)* null, i64 0, i32 2) to i64) to i64
  ret i64 %t
}
define i64 @ff() #0 {
  %t = bitcast i64 ptrtoint (<{ i16, i128 }> addrspace(4)* getelementptr ({i1, <{ i16, i128 }>}, {i1, <{ i16, i128 }>} addrspace(4)* null, i64 0, i32 1) to i64) to i64
  ret i64 %t
}
define i64 @fg() #0 {
  %t = bitcast i64 ptrtoint ({double, double} addrspace(4)* getelementptr ({i1, {double, double}}, {i1, {double, double}} addrspace(4)* null, i64 0, i32 1) to i64) to i64
  ret i64 %t
}
define i64 @fh() #0 {
  %t = bitcast i64 ptrtoint (double addrspace(4)* getelementptr (double, double addrspace(4)* null, i32 1) to i64) to i64
  ret i64 %t
}
define i64 @fi() #0 {
  %t = bitcast i64 ptrtoint (double addrspace(4)* getelementptr ({i1, double}, {i1, double}addrspace(4)* null, i64 0, i32 1) to i64) to i64
  ret i64 %t
}














define i64* @fM() #0 {
  %t = bitcast i64* getelementptr (i64, i64* null, i32 1) to i64*
  ret i64* %t
}
define i64* @fN() #0 {
  %t = bitcast i64* getelementptr ({ i64, i64 }, { i64, i64 }* null, i32 0, i32 1) to i64*
  ret i64* %t
}
define i64* @fO() #0 {
  %t = bitcast i64* getelementptr ([2 x i64], [2 x i64]* null, i32 0, i32 1) to i64*
  ret i64* %t
}





@ext2 = external addrspace(1) global [3 x { i32, i32 }]
define i32 addrspace(1)* @fZ() #0 {
  %t = bitcast i32 addrspace(1)* getelementptr inbounds (i32, i32 addrspace(1)* getelementptr inbounds ([3 x { i32, i32 }], [3 x { i32, i32 }] addrspace(1)* @ext2, i64 0, i64 1, i32 0), i64 1) to i32 addrspace(1)*
  ret i32 addrspace(1)* %t
}

attributes #0 = { nounwind }
