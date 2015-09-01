












@llvm.global_ctors = appending global [1 x { i32, void ()* }] [ { i32, void ()* } { i32 65535, void ()* @__mf_init } ]                
@llvm.global_dtors = appending global [1 x { i32, void ()* }] [ { i32, void ()* } { i32 65535, void ()* @__mf_fini } ]                

define void @__mf_init() {
entry:
        ret void
}

define void @__mf_fini() {
entry:
        ret void
}
