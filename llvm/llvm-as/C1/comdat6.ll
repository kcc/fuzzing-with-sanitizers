

target datalayout = "e-m:w-p:32:32-i64:64-f80:32-n8:16:32-S32"

$foo = comdat largest
@foo = linkonce_odr unnamed_addr constant [1 x i8*] [i8* bitcast (void ()* @bar to i8*)], comdat($foo)



declare void @bar() unnamed_addr
