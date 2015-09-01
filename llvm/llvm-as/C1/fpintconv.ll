





@f = global float 0x40D6E83280000000, align 4
@d = global double 0x4132D68780000000, align 8
@i_f = common global i32 0, align 4
@i_d = common global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%i \0A\00", align 1


define void @ifv() {
entry:

  %0 = load float, float* @f, align 4
  %conv = fptosi float %0 to i32


  store i32 %conv, i32* @i_f, align 4
  ret void
}


define void @idv() {
entry:

  %0 = load double, double* @d, align 8
  %conv = fptosi double %0 to i32


  store i32 %conv, i32* @i_d, align 4
  ret void
}
