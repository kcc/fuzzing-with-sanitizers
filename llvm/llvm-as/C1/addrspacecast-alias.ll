




@i = internal addrspace(1) global i8 42
@ia = internal alias addrspacecast (i8 addrspace(1)* @i to i8 addrspace(2)* addrspace(3)*)

