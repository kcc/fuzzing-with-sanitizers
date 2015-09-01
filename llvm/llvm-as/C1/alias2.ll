

@v1 = global i32 0


@v2 = global [1 x i32] zeroinitializer


@v3 = global [2 x i16] zeroinitializer


@a1 = alias bitcast (i32* @v1 to i16*)


@a2 = alias bitcast([1 x i32]* @v2 to i32*)


@a3 = alias addrspacecast (i32* @v1 to i32 addrspace(2)*)


@a4 = alias bitcast (i32* @v1 to i16*)


@a5 = thread_local(localdynamic) alias i32* @v1


@a6 = alias getelementptr ([2 x i16], [2 x i16]* @v3, i32 1, i32 1)

