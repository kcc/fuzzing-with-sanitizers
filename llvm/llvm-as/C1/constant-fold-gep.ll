






































@G8 = global i8* getelementptr (i8, i8* inttoptr (i32 1 to i8*), i32 -1)
@G1 = global i1* getelementptr (i1, i1* inttoptr (i32 1 to i1*), i32 -1)
@F8 = global i8* getelementptr (i8, i8* inttoptr (i32 1 to i8*), i32 -2)
@F1 = global i1* getelementptr (i1, i1* inttoptr (i32 1 to i1*), i32 -2)
@H8 = global i8* getelementptr (i8, i8* inttoptr (i32 0 to i8*), i32 -1)
@H1 = global i1* getelementptr (i1, i1* inttoptr (i32 0 to i1*), i32 -1)

































@a = constant i64 mul (i64 3, i64 mul (i64 ptrtoint ({[7 x double], [7 x double]}* getelementptr ({[7 x double], [7 x double]}, {[7 x double], [7 x double]}* null, i64 11) to i64), i64 5))
@b = constant i64 ptrtoint ([13 x double]* getelementptr ({i1, [13 x double]}, {i1, [13 x double]}* null, i64 0, i32 1) to i64)
@c = constant i64 ptrtoint (double* getelementptr ({double, double, double, double}, {double, double, double, double}* null, i64 0, i32 2) to i64)
@d = constant i64 ptrtoint (double* getelementptr ([13 x double], [13 x double]* null, i64 0, i32 11) to i64)
@e = constant i64 ptrtoint (double* getelementptr ({double, float, double, double}, {double, float, double, double}* null, i64 0, i32 2) to i64)
@f = constant i64 ptrtoint (<{ i16, i128 }>* getelementptr ({i1, <{ i16, i128 }>}, {i1, <{ i16, i128 }>}* null, i64 0, i32 1) to i64)
@g = constant i64 ptrtoint ({double, double}* getelementptr ({i1, {double, double}}, {i1, {double, double}}* null, i64 0, i32 1) to i64)
@h = constant i64 ptrtoint (double** getelementptr (double*, double** null, i64 1) to i64)
@i = constant i64 ptrtoint (double** getelementptr ({i1, double*}, {i1, double*}* null, i64 0, i32 1) to i64)













@M = constant i64* getelementptr (i64, i64* null, i32 1)
@N = constant i64* getelementptr ({ i64, i64 }, { i64, i64 }* null, i32 0, i32 1)
@O = constant i64* getelementptr ([2 x i64], [2 x i64]* null, i32 0, i32 1)










@ext = external global [3 x { i32, i32 }]
@Y = global [3 x { i32, i32 }]* getelementptr inbounds ([3 x { i32, i32 }], [3 x { i32, i32 }]* getelementptr inbounds ([3 x { i32, i32 }], [3 x { i32, i32 }]* @ext, i64 1), i64 1)
@Z = global i32* getelementptr inbounds (i32, i32* getelementptr inbounds ([3 x { i32, i32 }], [3 x { i32, i32 }]* @ext, i64 0, i64 1, i32 0), i64 1)

















































































define i8* @goo8() nounwind {
  %t = bitcast i8* getelementptr (i8, i8* inttoptr (i32 1 to i8*), i32 -1) to i8*
  ret i8* %t
}
define i1* @goo1() nounwind {
  %t = bitcast i1* getelementptr (i1, i1* inttoptr (i32 1 to i1*), i32 -1) to i1*
  ret i1* %t
}
define i8* @foo8() nounwind {
  %t = bitcast i8* getelementptr (i8, i8* inttoptr (i32 1 to i8*), i32 -2) to i8*
  ret i8* %t
}
define i1* @foo1() nounwind {
  %t = bitcast i1* getelementptr (i1, i1* inttoptr (i32 1 to i1*), i32 -2) to i1*
  ret i1* %t
}
define i8* @hoo8() nounwind {
  %t = bitcast i8* getelementptr (i8, i8* inttoptr (i32 0 to i8*), i32 -1) to i8*
  ret i8* %t
}
define i1* @hoo1() nounwind {
  %t = bitcast i1* getelementptr (i1, i1* inttoptr (i32 0 to i1*), i32 -1) to i1*
  ret i1* %t
}























































































































define i64 @fa() nounwind {
  %t = bitcast i64 mul (i64 3, i64 mul (i64 ptrtoint ({[7 x double], [7 x double]}* getelementptr ({[7 x double], [7 x double]}, {[7 x double], [7 x double]}* null, i64 11) to i64), i64 5)) to i64
  ret i64 %t
}
define i64 @fb() nounwind {
  %t = bitcast i64 ptrtoint ([13 x double]* getelementptr ({i1, [13 x double]}, {i1, [13 x double]}* null, i64 0, i32 1) to i64) to i64
  ret i64 %t
}
define i64 @fc() nounwind {
  %t = bitcast i64 ptrtoint (double* getelementptr ({double, double, double, double}, {double, double, double, double}* null, i64 0, i32 2) to i64) to i64
  ret i64 %t
}
define i64 @fd() nounwind {
  %t = bitcast i64 ptrtoint (double* getelementptr ([13 x double], [13 x double]* null, i64 0, i32 11) to i64) to i64
  ret i64 %t
}
define i64 @fe() nounwind {
  %t = bitcast i64 ptrtoint (double* getelementptr ({double, float, double, double}, {double, float, double, double}* null, i64 0, i32 2) to i64) to i64
  ret i64 %t
}
define i64 @ff() nounwind {
  %t = bitcast i64 ptrtoint (<{ i16, i128 }>* getelementptr ({i1, <{ i16, i128 }>}, {i1, <{ i16, i128 }>}* null, i64 0, i32 1) to i64) to i64
  ret i64 %t
}
define i64 @fg() nounwind {
  %t = bitcast i64 ptrtoint ({double, double}* getelementptr ({i1, {double, double}}, {i1, {double, double}}* null, i64 0, i32 1) to i64) to i64
  ret i64 %t
}
define i64 @fh() nounwind {
  %t = bitcast i64 ptrtoint (double** getelementptr (double*, double** null, i32 1) to i64) to i64
  ret i64 %t
}
define i64 @fi() nounwind {
  %t = bitcast i64 ptrtoint (double** getelementptr ({i1, double*}, {i1, double*}* null, i64 0, i32 1) to i64) to i64
  ret i64 %t
}









































define i64* @fM() nounwind {
  %t = bitcast i64* getelementptr (i64, i64* null, i32 1) to i64*
  ret i64* %t
}
define i64* @fN() nounwind {
  %t = bitcast i64* getelementptr ({ i64, i64 }, { i64, i64 }* null, i32 0, i32 1) to i64*
  ret i64* %t
}
define i64* @fO() nounwind {
  %t = bitcast i64* getelementptr ([2 x i64], [2 x i64]* null, i32 0, i32 1) to i64*
  ret i64* %t
}















define i32* @fZ() nounwind {
  %t = bitcast i32* getelementptr inbounds (i32, i32* getelementptr inbounds ([3 x { i32, i32 }], [3 x { i32, i32 }]* @ext, i64 0, i64 1, i32 0), i64 1) to i32*
  ret i32* %t
}



@p0 = global [4 x i8] zeroinitializer, align 1
@p12 = addrspace(12) global [4 x i8] zeroinitializer, align 1

define i8* @different_addrspace() nounwind noinline {

  %p = getelementptr inbounds i8, i8* addrspacecast ([4 x i8] addrspace(12)* @p12 to i8*),
                                  i32 2
  ret i8* %p

}

define i8* @same_addrspace() nounwind noinline {

  %p = getelementptr inbounds i8, i8* bitcast ([4 x i8] * @p0 to i8*), i32 2
  ret i8* %p

}

@gv1 = internal global i32 1
@gv2 = internal global [1 x i32] [ i32 2 ]
@gv3 = internal global [1 x i32] [ i32 2 ]


define i1 @gv_gep_vs_gv() {
  ret i1 icmp eq (i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gv2, i32 0, i32 0), i32* @gv1)
}



define i1 @gv_gep_vs_gv_gep() {
  ret i1 icmp eq (i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gv2, i32 0, i32 0), i32* getelementptr inbounds ([1 x i32], [1 x i32]* @gv3, i32 0, i32 0))
}




