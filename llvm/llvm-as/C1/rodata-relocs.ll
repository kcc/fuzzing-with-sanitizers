


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-unknown-linux-gnu"

@a = internal unnamed_addr constant [2 x i32] [i32 1, i32 2]
@a1 = unnamed_addr constant [2 x i32] [i32 1, i32 2]
@e = internal  unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 3, i32 4]], align 16
@e1 = unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1, i32 2], [2 x i32] [i32 3, i32 4]], align 16
@p = unnamed_addr constant i8* bitcast ([2 x i32]* @a to i8*)
@t = unnamed_addr constant i8* bitcast ([2 x [2 x i32]]* @e to i8*)
@p1 = unnamed_addr constant i8* bitcast ([2 x i32]* @a1 to i8*)
@t1 = unnamed_addr constant i8* bitcast ([2 x [2 x i32]]* @e1 to i8*)
@p2 = internal global i8* bitcast([2 x i32]* @a1 to i8*)
@t2 = internal global i8* bitcast([2 x [2 x i32]]* @e1 to i8*)
@p3 = internal global i8* bitcast([2 x i32]* @a to i8*)
@t3 = internal global i8* bitcast([2 x [2 x i32]]* @e to i8*)




























