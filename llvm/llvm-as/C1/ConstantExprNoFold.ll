






target datalayout = "p:32:32"

@A = global i64 0
@B = global i64 0






@C = global i1 icmp eq (i64* getelementptr inbounds (i64, i64* @A, i64 1), i64* @B)





@D = global i1 icmp eq (i64* getelementptr inbounds (i64, i64* @A, i64 1), i64* getelementptr inbounds (i64, i64* @B, i64 2))


@E = global i64 addrspace(1)* addrspacecast(i64* @A to i64 addrspace(1)*)



@weak.gep = global i32* getelementptr (i32, i32* @weak, i32 1)
@weak = extern_weak global i32



@F = global i1 icmp eq (i32* @weakany, i32* @glob)
@weakany = weak global i32 0



@empty.1 = external global [0 x i8], align 1
@empty.2 = external global [0 x i8], align 1
@empty.cmp = global i1 icmp eq ([0 x i8]* @empty.1, [0 x i8]* @empty.2)



@glob = global i32 0
@glob.a3 = alias getelementptr (i32, i32* @glob.a2, i32 1)
@glob.a2 = alias getelementptr (i32, i32* @glob.a1, i32 1)
@glob.a1 = alias i32* @glob
