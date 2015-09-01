



target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"

@.str  = constant [1 x i8] zeroinitializer, align 1
@.str1 = constant [13 x i8] c"hello, world\00", align 1
@.str2 = constant [4 x i8] c"foo\00", align 1
@.str3 = constant [4 x i8] c"bar\00", align 1
@.str4 = constant [6 x i8] c"123.4\00", align 1
@.str5 = constant [5 x i8] c"1234\00", align 1
@empty = constant [1 x i8] c"\00", align 1

declare double @ceil(double)
declare double @copysign(double, double)
declare double @cos(double)
declare double @fabs(double)
declare double @floor(double)
declare i8* @strcat(i8*, i8*)
declare i8* @strncat(i8*, i8*, i32)
declare i8* @strchr(i8*, i32)
declare i8* @strrchr(i8*, i32)
declare i32 @strcmp(i8*, i8*)
declare i32 @strncmp(i8*, i8*, i64)
declare i8* @strcpy(i8*, i8*)
declare i8* @stpcpy(i8*, i8*)
declare i8* @strncpy(i8*, i8*, i64)
declare i64 @strlen(i8*)
declare i8* @strpbrk(i8*, i8*)
declare i64 @strspn(i8*, i8*)
declare double @strtod(i8*, i8**)
declare float @strtof(i8*, i8**)
declare x86_fp80 @strtold(i8*, i8**)
declare i64 @strtol(i8*, i8**, i32)
declare i64 @strtoll(i8*, i8**, i32)
declare i64 @strtoul(i8*, i8**, i32)
declare i64 @strtoull(i8*, i8**, i32)
declare i64 @strcspn(i8*, i8*)
declare i32 @abs(i32)
declare i32 @ffs(i32)
declare i32 @ffsl(i64)
declare i32 @ffsll(i64)
declare i32 @fprintf(i8*, i8*)
declare i32 @isascii(i32)
declare i32 @isdigit(i32)
declare i32 @toascii(i32)
declare i64 @labs(i64)
declare i64 @llabs(i64)
declare i32 @printf(i8*)
declare i32 @sprintf(i8*, i8*)

define double @t1(double %x) {

  %ret = call double @ceil(double %x)
  ret double %ret

}

define double @t2(double %x, double %y) {

  %ret = call double @copysign(double %x, double %y)
  ret double %ret

}

define double @t3(double %x) {

  %call = call double @cos(double %x)
  ret double %call

}

define double @t4(double %x) {

  %ret = call double @fabs(double %x)
  ret double %ret

}

define double @t5(double %x) {

  %ret = call double @floor(double %x)
  ret double %ret

}

define i8* @t6(i8* %x) {

  %empty = getelementptr [1 x i8], [1 x i8]* @empty, i32 0, i32 0
  %ret = call i8* @strcat(i8* %x, i8* %empty)
  ret i8* %ret

}

define i8* @t7(i8* %x) {

  %empty = getelementptr [1 x i8], [1 x i8]* @empty, i32 0, i32 0
  %ret = call i8* @strncat(i8* %x, i8* %empty, i32 1)
  ret i8* %ret

}

define i8* @t8() {

  %x = getelementptr inbounds [13 x i8], [13 x i8]* @.str1, i32 0, i32 0
  %ret = call i8* @strchr(i8* %x, i32 119)
  ret i8* %ret

}

define i8* @t9() {

  %x = getelementptr inbounds [13 x i8], [13 x i8]* @.str1, i32 0, i32 0
  %ret = call i8* @strrchr(i8* %x, i32 119)
  ret i8* %ret

}

define i32 @t10() {

  %x = getelementptr inbounds [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %y = getelementptr inbounds [4 x i8], [4 x i8]* @.str3, i32 0, i32 0
  %ret = call i32 @strcmp(i8* %x, i8* %y)
  ret i32 %ret

}

define i32 @t11() {

  %x = getelementptr inbounds [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %y = getelementptr inbounds [4 x i8], [4 x i8]* @.str3, i32 0, i32 0
  %ret = call i32 @strncmp(i8* %x, i8* %y, i64 3)
  ret i32 %ret

}

define i8* @t12(i8* %x) {

  %y = getelementptr inbounds [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %ret = call i8* @strcpy(i8* %x, i8* %y)
  ret i8* %ret

}

define i8* @t13(i8* %x) {

  %y = getelementptr inbounds [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %ret = call i8* @stpcpy(i8* %x, i8* %y)
  ret i8* %ret

}

define i8* @t14(i8* %x) {

  %y = getelementptr inbounds [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %ret = call i8* @strncpy(i8* %x, i8* %y, i64 3)
  ret i8* %ret

}

define i64 @t15() {

  %x = getelementptr inbounds [4 x i8], [4 x i8]* @.str2, i32 0, i32 0
  %ret = call i64 @strlen(i8* %x)
  ret i64 %ret

}

define i8* @t16(i8* %x) {

  %y = getelementptr inbounds [1 x i8], [1 x i8]* @.str, i32 0, i32 0
  %ret = call i8* @strpbrk(i8* %x, i8* %y)
  ret i8* %ret

}

define i64 @t17(i8* %x) {

  %y = getelementptr inbounds [1 x i8], [1 x i8]* @.str, i32 0, i32 0
  %ret = call i64 @strspn(i8* %x, i8* %y)
  ret i64 %ret

}

define double @t18(i8** %y) {

  %x = getelementptr inbounds [6 x i8], [6 x i8]* @.str4, i64 0, i64 0
  %ret = call double @strtod(i8* %x, i8** %y)
  ret double %ret

}

define float @t19(i8** %y) {

  %x = getelementptr inbounds [6 x i8], [6 x i8]* @.str4, i64 0, i64 0
  %ret = call float @strtof(i8* %x, i8** %y)
  ret float %ret

}

define x86_fp80 @t20(i8** %y) {

  %x = getelementptr inbounds [6 x i8], [6 x i8]* @.str4, i64 0, i64 0
  %ret = call x86_fp80 @strtold(i8* %x, i8** %y)
  ret x86_fp80 %ret

}

define i64 @t21(i8** %y) {

  %x = getelementptr inbounds [5 x i8], [5 x i8]* @.str5, i64 0, i64 0
  %ret = call i64 @strtol(i8* %x, i8** %y, i32 10)
  ret i64 %ret

}

define i64 @t22(i8** %y) {

  %x = getelementptr inbounds [5 x i8], [5 x i8]* @.str5, i64 0, i64 0
  %ret = call i64 @strtoll(i8* %x, i8** %y, i32 10)
  ret i64 %ret

}

define i64 @t23(i8** %y) {

  %x = getelementptr inbounds [5 x i8], [5 x i8]* @.str5, i64 0, i64 0
  %ret = call i64 @strtoul(i8* %x, i8** %y, i32 10)
  ret i64 %ret

}

define i64 @t24(i8** %y) {

  %x = getelementptr inbounds [5 x i8], [5 x i8]* @.str5, i64 0, i64 0
  %ret = call i64 @strtoull(i8* %x, i8** %y, i32 10)
  ret i64 %ret

}

define i64 @t25(i8* %y) {

  %x = getelementptr [1 x i8], [1 x i8]* @empty, i32 0, i32 0
  %ret = call i64 @strcspn(i8* %x, i8* %y)
  ret i64 %ret

}

define i32 @t26(i32 %y) {

  %ret = call i32 @abs(i32 %y)
  ret i32 %ret

}

define i32 @t27(i32 %y) {

  %ret = call i32 @ffs(i32 %y)
  ret i32 %ret

}

define i32 @t28(i64 %y) {

  %ret = call i32 @ffsl(i64 %y)
  ret i32 %ret

}

define i32 @t29(i64 %y) {

  %ret = call i32 @ffsll(i64 %y)
  ret i32 %ret

}

define void @t30() {

  %x = getelementptr inbounds [13 x i8], [13 x i8]* @.str1, i32 0, i32 0
  call i32 @fprintf(i8* null, i8* %x)
  ret void

}

define i32 @t31(i32 %y) {

  %ret = call i32 @isascii(i32 %y)
  ret i32 %ret

}

define i32 @t32(i32 %y) {

  %ret = call i32 @isdigit(i32 %y)
  ret i32 %ret

}

define i32 @t33(i32 %y) {

  %ret = call i32 @toascii(i32 %y)
  ret i32 %ret

}

define i64 @t34(i64 %y) {

  %ret = call i64 @labs(i64 %y)
  ret i64 %ret

}

define i64 @t35(i64 %y) {

  %ret = call i64 @llabs(i64 %y)
  ret i64 %ret

}

define void @t36() {

  %x = getelementptr inbounds [1 x i8], [1 x i8]* @empty, i32 0, i32 0
  call i32 @printf(i8* %x)
  ret void

}

define void @t37(i8* %x) {

  %y = getelementptr inbounds [13 x i8], [13 x i8]* @.str1, i32 0, i32 0
  call i32 @sprintf(i8* %x, i8* %y)
  ret void

}
