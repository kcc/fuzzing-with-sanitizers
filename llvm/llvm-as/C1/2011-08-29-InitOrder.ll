



@llvm.global_ctors = appending global [3 x { i32, void ()* }] [{ i32, void ()* } { i32 2000, void ()* @construct_2 }, { i32, void ()* } { i32 3000, void ()* @construct_3 }, { i32, void ()* } { i32 1000, void ()* @construct_1 }]











@llvm.global_dtors = appending global [3 x { i32, void ()* }] [{ i32, void ()* } { i32 2000, void ()* @destruct_2 }, { i32, void ()* } { i32 1000, void ()* @destruct_1 }, { i32, void ()* } { i32 3000, void ()* @destruct_3 }]











declare void @construct_1()
declare void @construct_2()
declare void @construct_3()
declare void @destruct_1()
declare void @destruct_2()
declare void @destruct_3()
