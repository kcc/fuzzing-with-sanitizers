





@SomeVar = weak_odr global i32 0

@llvm.global_ctors = appending global [1 x { i32, void ()* }] [ { i32, void ()* } { i32 65535, void ()* @CTOR } ]

define internal void @CTOR() {
  store i32 23, i32* @SomeVar
  ret void
}


