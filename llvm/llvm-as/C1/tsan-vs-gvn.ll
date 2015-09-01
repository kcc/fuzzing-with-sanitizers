



target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:128:128-n8:16:32"

%struct_of_8_bytes_4_aligned = type { i32, i8, i8, i8, i8}

@f = global %struct_of_8_bytes_4_aligned zeroinitializer, align 4



define i32 @test_widening_bad(i8* %P) nounwind ssp noredzone sanitize_thread {
entry:
  %tmp = load i8, i8* getelementptr inbounds (%struct_of_8_bytes_4_aligned, %struct_of_8_bytes_4_aligned* @f, i64 0, i32 1), align 4
  %conv = zext i8 %tmp to i32
  %tmp1 = load i8, i8* getelementptr inbounds (%struct_of_8_bytes_4_aligned, %struct_of_8_bytes_4_aligned* @f, i64 0, i32 3), align 1
  %conv2 = zext i8 %tmp1 to i32
  %add = add nsw i32 %conv, %conv2
  ret i32 %add





}
