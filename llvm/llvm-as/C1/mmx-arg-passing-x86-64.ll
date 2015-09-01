




@g_v8qi = external global <8 x i8>

define void @t3() nounwind  {






  %tmp3 = load <8 x i8>, <8 x i8>* @g_v8qi, align 8
  %tmp3a = bitcast <8 x i8> %tmp3 to x86_mmx
  %tmp4 = tail call i32 (...) @pass_v8qi( x86_mmx %tmp3a ) nounwind
  ret void
}

define void @t4(x86_mmx %v1, x86_mmx %v2) nounwind  {











  %v1a = bitcast x86_mmx %v1 to <8 x i8>
  %v2b = bitcast x86_mmx %v2 to <8 x i8>
  %tmp3 = add <8 x i8> %v1a, %v2b
  %tmp3a = bitcast <8 x i8> %tmp3 to x86_mmx
  %tmp4 = tail call i32 (...) @pass_v8qi( x86_mmx %tmp3a ) nounwind
  ret void
}

define void @t5() nounwind  {







  call void @pass_v1di( <1 x i64> zeroinitializer )
  ret void
}

declare i32 @pass_v8qi(...)
declare void @pass_v1di(<1 x i64>)
