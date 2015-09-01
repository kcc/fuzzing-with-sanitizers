

$f1 = comdat any
@v1 = global i32 0, comdat($f1)
define void @f1() comdat($f1) {
  ret void
}

$f2 = comdat exactmatch
@v2 = global i32 0, comdat($f2)
define void @f2() comdat($f2) {
  ret void
}

$f3 = comdat largest
@v3 = global i32 0, comdat($f3)
define void @f3() comdat($f3) {
  ret void
}

$f4 = comdat noduplicates
@v4 = global i32 0, comdat($f4)
define void @f4() comdat($f4) {
  ret void
}

$f5 = comdat samesize
@v5 = global i32 0, comdat($f5)
define void @f5() comdat($f5) {
  ret void
}

$f6 = comdat samesize
@v6 = global i32 0, comdat($f6)
@f6 = global i32 0, comdat($f6)

$"\01@f7@0" = comdat any
define x86_fastcallcc void @"\01@v7@0"() comdat($"\01@f7@0") {
  ret void
}
define x86_fastcallcc void @"\01@f7@0"() comdat($"\01@f7@0") {
  ret void
}

$f8 = comdat any
define x86_fastcallcc void @v8() comdat($f8) {
  ret void
}
define x86_fastcallcc void @f8() comdat($f8) {
  ret void
}

$vftable = comdat largest

@some_name = private unnamed_addr constant [2 x i8*] zeroinitializer, comdat($vftable)
@vftable = alias getelementptr([2 x i8*], [2 x i8*]* @some_name, i32 0, i32 1)




































