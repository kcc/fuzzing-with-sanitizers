


declare void @source_function()
@source_variable = external global i32
declare void @source_function_pattern_function()
declare void @source_function_pattern_multiple_function_matches()
@source_variable_pattern_variable = external global i32
@source_variable_pattern_multiple_variable_matches = external global i32
declare void @"\01naked_source_function"()
declare void @"\01__imp_missing_global_leader_prefix"()

declare i32 @first_callee()
declare i32 @second_callee()
define i32 @caller() {
  %rhs = call i32 @first_callee()
  %lhs = call i32 @second_callee()
  %res = add i32 %rhs, %lhs
  ret i32 %res
}

%struct.S = type { i8 }
@_ZN1SC1Ev = alias void (%struct.S*)* @_ZN1SC2Ev
define void @_ZN1SC2Ev(%struct.S* %this) unnamed_addr align 2 {
entry:
  %this.addr = alloca %struct.S*, align 4
  store %struct.S* %this, %struct.S** %this.addr, align 4
  ret void
}

$source_comdat_function = comdat any
define dllexport void @source_comdat_function() comdat($source_comdat_function) {
entry:
  ret void
}

$source_comdat_function_1 = comdat exactmatch
define dllexport void @source_comdat_function_1() comdat($source_comdat_function_1) {
entry:
  ret void
}

$source_comdat_variable = comdat largest
@source_comdat_variable = global i32 32, comdat($source_comdat_variable)

$source_comdat_variable_1 = comdat noduplicates
@source_comdat_variable_1 = global i32 64, comdat($source_comdat_variable_1)













































