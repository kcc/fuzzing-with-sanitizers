









declare void @bar(i8 signext, i16 signext, i32 signext, i64, float, double,
                  fp128, i64, float, double, i8 signext, i16 signext,
                  i32 signext, i64, float, double, fp128)









define void @foo() {













































  call void @bar (i8 -1, i16 -2, i32 -3, i64 -4, float 0.0, double 0.0,
                  fp128 0xL00000000000000000000000000000000, i64 -5,
                  float -0.0, double -0.0, i8 -6, i16 -7, i32 -8, i64 -9,
                  float 0.0, double 0.0,
                  fp128 0xL00000000000000000000000000000000)
  ret void
}
