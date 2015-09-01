
target datalayout = "e-p:32:32:32-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v16:16:16-v24:32:32-v32:32:32-v64:64:64-v128:128:128-a0:0:64"






@alias_i32_to_f32 = alias bitcast (i32 (i32)* @func_i32 to float (float)*)


@alias_v2i32_to_v2f32 = alias bitcast (<2 x i32> (<2 x i32>)* @func_v2i32 to <2 x float> (<2 x float>)*)


@alias_v2f32_to_i64 = alias bitcast (i64 (i64)* @func_i64 to <2 x float> (<2 x float>)*)


@alias_i64_to_v2f32 = alias bitcast (<2 x float> (<2 x float>)* @func_v2f32 to i64 (i64)*)


@alias_v2i32p_to_v2i64p = alias bitcast (<2 x i32*> (<2 x i32*>)* @func_v2i32p to <2 x i64*> (<2 x i64*>)*)





@alias_i64_to_f32 = alias bitcast (i64 (i64)* @func_i64 to float (float)*)



@alias_v2i64_to_v2f32 = alias bitcast (<2 x i64> (<2 x i64>)* @func_v2i64 to <2 x float> (<2 x float>)*)



@alias_v2i32_to_v4f32 = alias bitcast (<2 x i32> (<2 x i32>)* @func_v2i32 to <4 x float> (<4 x float>)*)


@alias_i64_to_v4f32 = alias bitcast (<4 x float> (<4 x float>)* @func_v4f32 to i64 (i64)*)


@alias_v4f32_to_i64 = alias bitcast (i64 (i64)* @func_i64 to <4 x float> (<4 x float>)*)



@alias_i64_to_v2i32p = alias bitcast (<2 x i32*> (<2 x i32*>)* @func_v2i32p to i64 (i64)*)


@alias_v4i32p_to_i64 = alias bitcast (i64 (i64)* @func_i64 to <4 x i32*> (<4 x i32*>)*)



define internal <2 x i32> @func_v2i32(<2 x i32> %v) noinline nounwind {
entry:
  ret <2 x i32> %v
}

define internal <2 x float> @func_v2f32(<2 x float> %v) noinline nounwind {
entry:
  ret <2 x float> %v
}

define internal <4 x float> @func_v4f32(<4 x float> %v) noinline nounwind {
entry:
  ret <4 x float> %v
}

define internal i32 @func_i32(i32 %v) noinline nounwind {
entry:
  ret i32 %v
}

define internal i64 @func_i64(i64 %v) noinline nounwind {
entry:
  ret i64 %v
}

define internal <2 x i64> @func_v2i64(<2 x i64> %v) noinline nounwind {
entry:
  ret <2 x i64> %v
}

define internal <2 x i32*> @func_v2i32p(<2 x i32*> %v) noinline nounwind {
entry:
  ret <2 x i32*> %v
}




define void @bitcast_alias_scalar(float* noalias %source, float* noalias %dest) nounwind {
entry:







  %tmp = load float, float* %source, align 8
  %call = call float @alias_i32_to_f32(float %tmp) nounwind
  store float %call, float* %dest, align 8
  ret void
}


define void @bitcast_alias_vector(<2 x float>* noalias %source, <2 x float>* noalias %dest) nounwind {
entry:







  %tmp = load <2 x float>, <2 x float>* %source, align 8
  %call = call <2 x float> @alias_v2i32_to_v2f32(<2 x float> %tmp) nounwind
  store <2 x float> %call, <2 x float>* %dest, align 8
  ret void
}


define void @bitcast_alias_vector_scalar_same_size(<2 x float>* noalias %source, <2 x float>* noalias %dest) nounwind {
entry:






  %tmp = load <2 x float>, <2 x float>* %source, align 8
  %call = call <2 x float> @alias_v2f32_to_i64(<2 x float> %tmp) nounwind
  store <2 x float> %call, <2 x float>* %dest, align 8
  ret void
}

define void @bitcast_alias_scalar_vector_same_size(i64* noalias %source, i64* noalias %dest) nounwind {
entry:






  %tmp = load i64, i64* %source, align 8
  %call = call i64 @alias_i64_to_v2f32(i64 %tmp) nounwind
  store i64 %call, i64* %dest, align 8
  ret void
}

define void @bitcast_alias_vector_ptrs_same_size(<2 x i64*>* noalias %source, <2 x i64*>* noalias %dest) nounwind {
entry:






  %tmp = load <2 x i64*>, <2 x i64*>* %source, align 8
  %call = call <2 x i64*> @alias_v2i32p_to_v2i64p(<2 x i64*> %tmp) nounwind
  store <2 x i64*> %call, <2 x i64*>* %dest, align 8
  ret void
}



define void @bitcast_alias_mismatch_scalar_size(float* noalias %source, float* noalias %dest) nounwind {
entry:




  %tmp = load float, float* %source, align 8
  %call = call float @alias_i64_to_f32(float %tmp) nounwind
  store float %call, float* %dest, align 8
  ret void
}

define void @bitcast_alias_mismatch_vector_element_and_bit_size(<2 x float>* noalias %source, <2 x float>* noalias %dest) nounwind {
entry:




  %tmp = load <2 x float>, <2 x float>* %source, align 8
  %call = call <2 x float> @alias_v2i64_to_v2f32(<2 x float> %tmp) nounwind
  store <2 x float> %call, <2 x float>* %dest, align 8
  ret void
}

define void @bitcast_alias_vector_mismatched_number_elements(<4 x float>* noalias %source, <4 x float>* noalias %dest) nounwind {
entry:


  %tmp = load <4 x float>, <4 x float>* %source, align 8
  %call = call <4 x float> @alias_v2i32_to_v4f32(<4 x float> %tmp) nounwind
  store <4 x float> %call, <4 x float>* %dest, align 8
  ret void
}

define void @bitcast_alias_vector_scalar_mismatched_bit_size(<4 x float>* noalias %source, <4 x float>* noalias %dest) nounwind {
entry:


  %tmp = load <4 x float>, <4 x float>* %source, align 8
  %call = call <4 x float> @alias_v4f32_to_i64(<4 x float> %tmp) nounwind
  store <4 x float> %call, <4 x float>* %dest, align 8
  ret void
}

define void @bitcast_alias_vector_ptrs_scalar_mismatched_bit_size(<4 x i32*>* noalias %source, <4 x i32*>* noalias %dest) nounwind {
entry:


  %tmp = load <4 x i32*>, <4 x i32*>* %source, align 8
  %call = call <4 x i32*> @alias_v4i32p_to_i64(<4 x i32*> %tmp) nounwind
  store <4 x i32*> %call, <4 x i32*>* %dest, align 8
  ret void
}

define void @bitcast_alias_scalar_vector_ptrs_same_size(i64* noalias %source, i64* noalias %dest) nounwind {
entry:


  %tmp = load i64, i64* %source, align 8
  %call = call i64 @alias_i64_to_v2i32p(i64 %tmp) nounwind
  store i64 %call, i64* %dest, align 8
  ret void
}

define void @bitcast_alias_scalar_vector_mismatched_bit_size(i64* noalias %source, i64* noalias %dest) nounwind {
entry:


  %tmp = load i64, i64* %source, align 8
  %call = call i64 @alias_i64_to_v4f32(i64 %tmp) nounwind
  store i64 %call, i64* %dest, align 8
  ret void
}

