

@_Z17in_custom_section = internal global i8 42, section "CUSTOM"
@in_custom_section = internal dllexport alias i8* @_Z17in_custom_section



@llvm.used = appending global [1 x i8*] [i8* @in_custom_section], section "llvm.metadata"
