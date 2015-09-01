

@_begin = external global i8
@_end = external global i8

declare arm_aapcs_vfpcc void @force_emission()

define arm_aapcs_vfpcc void @bundle() {
entry:
  br i1 icmp uge (i32 sub (i32 ptrtoint (i8* @_end to i32), i32 ptrtoint (i8* @_begin to i32)), i32 4), label %if.then, label %if.end

if.then:
  tail call arm_aapcs_vfpcc void @force_emission()
  br label %if.end

if.end:
  ret void
}










