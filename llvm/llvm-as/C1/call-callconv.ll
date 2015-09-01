


@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1

define arm_aapcscc i32 @_abs(i32 %i) nounwind readnone {

  %call = tail call arm_aapcscc i32 @abs(i32 %i) nounwind readnone
  ret i32 %call




}

declare arm_aapcscc i32 @abs(i32) nounwind readnone

define arm_aapcscc i32 @_labs(i32 %i) nounwind readnone {

  %call = tail call arm_aapcscc i32 @labs(i32 %i) nounwind readnone
  ret i32 %call




}

declare arm_aapcscc i32 @labs(i32) nounwind readnone

define arm_aapcscc i32 @_strlen1() {

  %call = tail call arm_aapcscc i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  ret i32 %call

}

declare arm_aapcscc i32 @strlen(i8*)

define arm_aapcscc zeroext i1 @_strlen2(i8* %str) {

  %call = tail call arm_aapcscc i32 @strlen(i8* %str)
  %cmp = icmp ne i32 %call, 0
  ret i1 %cmp




}
