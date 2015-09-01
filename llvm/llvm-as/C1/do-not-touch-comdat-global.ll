


target datalayout = "e-m:w-p:32:32-i64:64-f80:32-n8:16:32-S32"
target triple = "i686-pc-windows-msvc"

$global_noinst = comdat largest
@aliasee = private unnamed_addr constant [2 x i8] [i8 1, i8 2], comdat($global_noinst)
@global_noinst = unnamed_addr alias [2 x i8]* @aliasee


@global_inst = private constant [2 x i8] [i8 1, i8 2]


