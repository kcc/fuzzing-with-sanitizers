




define void @func_nobody() {
entry:
  ret void
}





define i32 @return_int_const() {
entry:
  ret i32 1729
}






define double @return_double_const() {
entry:
  ret double 0.000000e+00
}






define i32 @leaf_proc_with_args(i32 %a, i32 %b, i32 %c) {
entry:
  %0 = add nsw i32 %b, %a
  %1 = add nsw i32 %0, %c
  ret i32 %1
}






define i32 @leaf_proc_with_args_in_stack(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i32 %g, i32 %h) {
entry:
  %0 = add nsw i32 %b, %a
  %1 = add nsw i32 %0, %c
  %2 = add nsw i32 %1, %d
  %3 = add nsw i32 %2, %e
  %4 = add nsw i32 %3, %f
  %5 = add nsw i32 %4, %g
  %6 = add nsw i32 %5, %h
  ret i32 %6
}











define i32 @leaf_proc_with_local_array(i32 %a, i32 %b, i32 %c) {
entry:
  %array = alloca [2 x i32], align 4
  %0 = sub nsw i32 %b, %c
  %1 = getelementptr inbounds [2 x i32], [2 x i32]* %array, i32 0, i32 0
  store i32 1, i32* %1, align 4
  %2 = getelementptr inbounds [2 x i32], [2 x i32]* %array, i32 0, i32 1
  store i32 2, i32* %2, align 4
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* %array, i32 0, i32 %a
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}
