











@i = external thread_local global i32
@a = external global i8
@b = external global [10 x i8]

define arm_aapcs_vfpcc i32 @main() nounwind {
entry:
  %0 = load i32, i32* @i, align 4
  switch i32 %0, label %bb2 [
    i32 12, label %bb
    i32 13, label %bb1
  ]

bb:                                               
  %1 = tail call arm_aapcs_vfpcc  i32 @foo(i8* @a) nounwind
  ret i32 %1
















bb1:                                              
  %2 = tail call arm_aapcs_vfpcc  i32 @bar(i32* bitcast ([10 x i8]* @b to i32*)) nounwind
  ret i32 %2

bb2:                                              
  ret i32 -1
}

declare arm_aapcs_vfpcc i32 @foo(i8*)

declare arm_aapcs_vfpcc i32 @bar(i32*)
