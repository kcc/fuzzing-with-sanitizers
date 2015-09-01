

@i = internal global i32 0, align 4


define arm_aapcs_vfpcc i32* @function() #0 {
entry:
  ret i32* @i
}

attributes #0 = { minsize }





