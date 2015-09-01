







@g = addrspace(1) global i32 42
@g2 = addrspace(1) global i32* addrspacecast (i32 addrspace(1)* @g to i32*)
@g3 = addrspace(1) global i32 addrspace(1)* @g
@g4 = constant {i32*, i32*} {i32* null, i32* addrspacecast (i32 addrspace(1)* @g to i32*)}
@g5 = constant {i32*, i32*} {i32* null, i32* addrspacecast (i32 addrspace(1)* getelementptr (i32, i32 addrspace(1)* @g, i32 2) to i32*)}
