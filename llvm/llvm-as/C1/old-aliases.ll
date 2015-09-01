





@v1 = global i32 0


@v2 = global [1 x i32] zeroinitializer


@v3 = alias bitcast (i32* @v1 to i16*)


@v4 = alias getelementptr ([1 x i32], [1 x i32]* @v2, i32 0, i32 0)


@v5 = alias i32 addrspace(2)* addrspacecast (i32 addrspace(0)* @v1 to i32 addrspace(2)*)


@v6 = alias i16* @v3

