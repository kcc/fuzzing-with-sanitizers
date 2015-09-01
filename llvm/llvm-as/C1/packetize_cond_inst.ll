

target datalayout = "e-p:32:32:32-i64:64:64-i32:32:32-i16:16:16-i1:32:32-f64:64:64-f32:32:32-v64:64:64-v32:32:32-a0:0-n16:32"
target triple = "hexagon-unknown--elf"











define i32 @ifcnv_add(i32, i32, i32) nounwind readnone {
  %4 = icmp sgt i32 %2, %1
  br i1 %4, label %5, label %7


  %6 = add nsw i32 %0, 10
  br label %9


  %8 = add nsw i32 %2, %1
  br label %9


  %10 = phi i32 [ %6, %5 ], [ %8, %7 ]
  %11 = add nsw i32 %10, 1
  ret i32 %11
}
