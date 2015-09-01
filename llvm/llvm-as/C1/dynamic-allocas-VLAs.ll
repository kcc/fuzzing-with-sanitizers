




define i32 @t1() nounwind uwtable ssp {
entry:
  %a = alloca i32, align 4
  call void @t1_helper(i32* %a) nounwind
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 13
  ret i32 %add







}

declare void @t1_helper(i32*)


define i32 @t2() nounwind uwtable ssp {
entry:
  %a = alloca i32, align 4
  %v = alloca <8 x float>, align 32
  call void @t2_helper(i32* %a, <8 x float>* %v) nounwind
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 13
  ret i32 %add













}

declare void @t2_helper(i32*, <8 x float>*)


define i32 @t3(i64 %sz) nounwind uwtable ssp {
entry:
  %a = alloca i32, align 4
  %vla = alloca i32, i64 %sz, align 16
  call void @t3_helper(i32* %a, i32* %vla) nounwind
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 13
  ret i32 %add











}

declare void @t3_helper(i32*, i32*)


define i32 @t4(i64 %sz) nounwind uwtable ssp {
entry:
  %a = alloca i32, align 4
  %v = alloca <8 x float>, align 32
  %vla = alloca i32, i64 %sz, align 16
  call void @t4_helper(i32* %a, i32* %vla, <8 x float>* %v) nounwind
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 13
  ret i32 %add


















}

declare void @t4_helper(i32*, i32*, <8 x float>*)


define i32 @t5(float* nocapture %f) nounwind uwtable ssp {
entry:
  %a = alloca i32, align 4
  %0 = bitcast float* %f to <8 x float>*
  %1 = load <8 x float>, <8 x float>* %0, align 32
  call void @t5_helper1(i32* %a) nounwind
  call void @t5_helper2(<8 x float> %1) nounwind
  %2 = load i32, i32* %a, align 4
  %add = add nsw i32 %2, 13
  ret i32 %add











}

declare void @t5_helper1(i32*)

declare void @t5_helper2(<8 x float>)



define i32 @t6(i64 %sz, float* nocapture %f) nounwind uwtable ssp {
entry:

  %a = alloca i32, align 4
  %0 = bitcast float* %f to <8 x float>*
  %1 = load <8 x float>, <8 x float>* %0, align 32
  %vla = alloca i32, i64 %sz, align 16
  call void @t6_helper1(i32* %a, i32* %vla) nounwind
  call void @t6_helper2(<8 x float> %1) nounwind
  %2 = load i32, i32* %a, align 4
  %add = add nsw i32 %2, 13
  ret i32 %add
}

declare void @t6_helper1(i32*, i32*)

declare void @t6_helper2(<8 x float>)




%struct.struct_t = type { [5 x i32] }

define void @t7(i32 %size, %struct.struct_t* byval align 8 %arg1) nounwind uwtable {
entry:
  %x = alloca i32, align 32
  store i32 0, i32* %x, align 32
  %0 = zext i32 %size to i64
  %vla = alloca i32, i64 %0, align 16
  %1 = load i32, i32* %x, align 32
  call void @bar(i32 %1, i32* %vla, %struct.struct_t* byval align 8 %arg1)
  ret void
















}

declare i8* @llvm.stacksave() nounwind

declare void @bar(i32, i32*, %struct.struct_t* byval align 8)

declare void @llvm.stackrestore(i8*) nounwind



define i32 @t8() nounwind uwtable {
entry:
  %a = alloca i32, align 4
  call void @t1_helper(i32* %a) nounwind
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 13
  ret i32 %add







}


define i32 @t9(i64 %sz) nounwind uwtable {
entry:
  %a = alloca i32, align 4
  %vla = alloca i32, i64 %sz, align 16
  call void @t3_helper(i32* %a, i32* %vla) nounwind
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 13
  ret i32 %add












}
