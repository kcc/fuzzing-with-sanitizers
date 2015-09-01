




@A = global i32* bitcast (i8* null to i32*)  
@B = global i32** bitcast (i32** @A to i32**)   
@C = global i32 trunc (i64 42 to i32)        
@D = global i32* bitcast(float*  bitcast (i32* @C to float*) to i32*)  
@E = global i32 ptrtoint(float* inttoptr (i8 5 to float*) to i32)  


@F = global i32* inttoptr (i32 add (i32 5, i32 -5) to i32*)
@G = global i32* inttoptr (i32 sub (i32 5, i32 5) to i32*)


@H = global i32 addrspace(1)* addrspacecast(i32* null to i32 addrspace(1)*)
