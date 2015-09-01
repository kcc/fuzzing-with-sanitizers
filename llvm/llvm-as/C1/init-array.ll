

target triple = "mipsel-unknown-linux"

@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @test }]





define internal void @test() section ".text.startup" {
entry:
  ret void
}
