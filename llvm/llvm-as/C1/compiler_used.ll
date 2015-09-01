

@X = internal global i8 4
@Y = internal global i32 123
@Z = internal global i8 4

@llvm.used = appending global [1 x i8*] [ i8* @Z ], section "llvm.metadata"
@llvm.compiler.used = appending global [2 x i8*] [ i8* @X, i8* bitcast (i32* @Y to i8*)], section "llvm.metadata"




