



target datalayout = "e-p:32:32-i64:64-v128:8:128-n32:64-S128"
target triple = "wasm32-unknown-unknown"



@llvm.used = appending global [1 x i32*] [i32* @g], section "llvm.metadata"

@g = private global i32 1337

@ud = internal global i32 undef
@nil = internal global i32 zeroinitializer
@z = internal global i32 0
@one = internal global i32 1
@answer = internal global i32 42
@u32max = internal global i32 -1

@ud64 = internal global i64 undef
@nil64 = internal global i64 zeroinitializer
@z64 = internal global i64 0
@twoP32 = internal global i64 4294967296
@u64max = internal global i64 -1

@f32ud = internal global float undef
@f32nil = internal global float zeroinitializer
@f32z = internal global float 0.0
@f32nz = internal global float -0.0
@f32two = internal global float 2.0

@f64ud = internal global double undef
@f64nil = internal global double zeroinitializer
@f64z = internal global double 0.0
@f64nz = internal global double -0.0
@f64two = internal global double 2.0
