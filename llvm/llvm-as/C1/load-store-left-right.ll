














%struct.SLL = type { i64 }
%struct.SI = type { i32 }
%struct.SUI = type { i32 }

@sll = common global %struct.SLL zeroinitializer, align 1
@si = common global %struct.SI zeroinitializer, align 1
@sui = common global %struct.SUI zeroinitializer, align 1

define i32 @load_SI() nounwind readonly {
entry:




















  %0 = load i32, i32* getelementptr inbounds (%struct.SI, %struct.SI* @si, i32 0, i32 0), align 1
  ret i32 %0
}

define void @store_SI(i32 signext %a) nounwind {
entry:




















  store i32 %a, i32* getelementptr inbounds (%struct.SI, %struct.SI* @si, i32 0, i32 0), align 1
  ret void
}

define i64 @load_SLL() nounwind readonly {
entry:

























  %0 = load i64, i64* getelementptr inbounds (%struct.SLL, %struct.SLL* @sll, i64 0, i32 0), align 1
  ret i64 %0
}

define i64 @load_SI_sext_to_i64() nounwind readonly {
entry:























  %0 = load i32, i32* getelementptr inbounds (%struct.SI, %struct.SI* @si, i64 0, i32 0), align 1
  %conv = sext i32 %0 to i64
  ret i64 %conv
}

define i64 @load_UI() nounwind readonly {
entry:





























  %0 = load i32, i32* getelementptr inbounds (%struct.SUI, %struct.SUI* @sui, i64 0, i32 0), align 1
  %conv = zext i32 %0 to i64
  ret i64 %conv
}

define void @store_SLL(i64 %a) nounwind {
entry:

























  store i64 %a, i64* getelementptr inbounds (%struct.SLL, %struct.SLL* @sll, i64 0, i32 0), align 1
  ret void
}

define void @store_SI_trunc_from_i64(i32 signext %a) nounwind {
entry:




















  store i32 %a, i32* getelementptr inbounds (%struct.SI, %struct.SI* @si, i64 0, i32 0), align 1
  ret void
}






%struct.S0 = type { i8, i8 }
@struct_s0 = common global %struct.S0 zeroinitializer, align 1
%struct.S1 = type { i16, i16 }
@struct_s1 = common global %struct.S1 zeroinitializer, align 1
%struct.S2 = type { i32, i32 }
@struct_s2 = common global %struct.S2 zeroinitializer, align 1

define void @copy_struct_S0() nounwind {
entry:
















  %0 = load %struct.S0, %struct.S0* getelementptr inbounds (%struct.S0, %struct.S0* @struct_s0, i32 0), align 1
  store %struct.S0 %0, %struct.S0* getelementptr inbounds (%struct.S0, %struct.S0* @struct_s0, i32 1), align 1
  ret void
}

define void @copy_struct_S1() nounwind {
entry:




































  %0 = load %struct.S1, %struct.S1* getelementptr inbounds (%struct.S1, %struct.S1* @struct_s1, i32 0), align 1
  store %struct.S1 %0, %struct.S1* getelementptr inbounds (%struct.S1, %struct.S1* @struct_s1, i32 1), align 1
  ret void
}

define void @copy_struct_S2() nounwind {
entry:






















































  %0 = load %struct.S2, %struct.S2* getelementptr inbounds (%struct.S2, %struct.S2* @struct_s2, i32 0), align 1
  store %struct.S2 %0, %struct.S2* getelementptr inbounds (%struct.S2, %struct.S2* @struct_s2, i32 1), align 1
  ret void
}






@arr = common global [7 x i8] zeroinitializer, align 1

define void @pass_array_byval() nounwind {
entry:

























































  tail call void @extern_func([7 x i8]* byval @arr) nounwind
  ret void
}

declare void @extern_func([7 x i8]* byval)
