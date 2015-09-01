



target datalayout = "e-p:32:32"
	%myint = type opaque
	%struct1 = type { i32, void (%struct2*)*, %myint*, i32 (i32*)* }
	%struct2 = type { %struct1 }
@driver1 = global %struct1 zeroinitializer		
@m1 = external global [1 x i8]*		
@str1 = constant [1 x i8] zeroinitializer		
@str2 = constant [2 x i8] zeroinitializer		
@str3 = constant [3 x i8] zeroinitializer		
@str4 = constant [4 x i8] zeroinitializer		
@str5 = constant [5 x i8] zeroinitializer		
@str6 = constant [6 x i8] zeroinitializer		
@str7 = constant [7 x i8] zeroinitializer		
@str8 = constant [8 x i8] zeroinitializer		
@str9 = constant [9 x i8] zeroinitializer		
@stra = constant [10 x i8] zeroinitializer		
@strb = constant [11 x i8] zeroinitializer		
@strc = constant [12 x i8] zeroinitializer		
@strd = constant [13 x i8] zeroinitializer		
@stre = constant [14 x i8] zeroinitializer		
@strf = constant [15 x i8] zeroinitializer		
@strg = constant [16 x i8] zeroinitializer		
@strh = constant [17 x i8] zeroinitializer		

declare void @func(%struct2*)

define void @tty_init() {
entry:
	store volatile void (%struct2*)* @func, void (%struct2*)** getelementptr (%struct1, %struct1* @driver1, i64 0, i32 1)
	ret void
}
