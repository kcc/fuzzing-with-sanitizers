

%struct.anon = type { i8 }
%struct.S = type { i32 }

@a = common global %struct.anon zeroinitializer, align 1
@b = common global %struct.S zeroinitializer, align 4


define i32 @main() {

  store i8 0, i8* getelementptr inbounds (%struct.anon, %struct.anon* @a, i64 0, i32 0), align 1
  br label %loop

loop:
  %storemerge1 = phi i8 [ 0, %0 ], [ %inc, %loop ]
  %m = load volatile i32, i32* getelementptr inbounds (%struct.S, %struct.S* @b, i64 0, i32 0), align 4
  %inc = add nuw i8 %storemerge1, 1



  %exitcond = icmp eq i8 %inc, -128
  br i1 %exitcond, label %exit, label %loop

exit:
  store i8 -128, i8* getelementptr inbounds (%struct.anon, %struct.anon* @a, i64 0, i32 0), align 1
  ret i32 0
}
