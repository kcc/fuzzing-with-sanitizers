




declare void @_notremovable()

@llvm.global_ctors = appending global [2 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }, { i32, void ()* } { i32 65535, void ()* @_notremovable }]


define internal void @_GLOBAL__I_a() #1 section "__TEXT,__StaticInit,regular,pure_instructions" {
entry:
  ret void
}
