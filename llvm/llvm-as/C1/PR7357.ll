
@.str1 = private constant [11 x i8] c"(){}






define arm_aapcscc i32 @foo(i32 %argc) nounwind {
bb.nph:
  %c = call arm_aapcscc  i8* @strchr(i8* getelementptr ([11 x i8], [11 x i8]* @.str1, i32 0,
i32 0), i32 %argc) nounwind readonly
  %p = ptrtoint i8* %c to i32
  ret i32 %p
}

declare arm_aapcscc i8* @strchr(i8*, i32) nounwind readonly
