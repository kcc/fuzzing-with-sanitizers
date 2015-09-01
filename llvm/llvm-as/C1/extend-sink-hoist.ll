
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"




define i128 @sink(i64* %mem1, i64* %mem2) {


block1:
  %l1 = load i64, i64* %mem1
  %s1 = sext i64 %l1 to i128
  br label %block2





block2:
  %l2 = load i64, i64* %mem2
  %s2 = sext i64 %l2 to i128
  %res = mul i128 %s1, %s2
  ret i128 %res
}



define i64 @hoist(i32* %mem1, i32* %mem2) {



block1:
  %l1 = load i32, i32* %mem1
  br label %block2




block2:
  %s1 = sext i32 %l1 to i64
  %l2 = load i32, i32* %mem2
  %s2 = sext i32 %l2 to i64
  %res = mul i64 %s1, %s2
  ret i64 %res
}



define i128 @use_ext_source() {
block1:
  %v1 = or i64 undef, undef
  %v2 = zext i64 %v1 to i128
  br i1 undef, label %block2, label %block3

block2:
  %v3 = add i64 %v1, 1
  %v4 = zext i64 %v3 to i128
  br label %block3

block3:
  %res = phi i128 [ %v2, %block1 ], [ %v4, %block2 ]
  ret i128 %res
}
