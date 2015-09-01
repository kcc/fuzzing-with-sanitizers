






	%struct.mystruct = type { i32, i32 addrspace(33)*, i32, i32 addrspace(33)* }
@input = weak addrspace(42) global %struct.mystruct zeroinitializer  		
@output = addrspace(66) global %struct.mystruct zeroinitializer 		
@y = external addrspace(33) global i32 addrspace(11)* addrspace(22)* 		

define void @foo() {
entry:
	%tmp1 = load i32 addrspace(33)*, i32 addrspace(33)* addrspace(42)* getelementptr (%struct.mystruct, %struct.mystruct addrspace(42)* @input, i32 0, i32 3), align 4		
	store i32 addrspace(33)* %tmp1, i32 addrspace(33)* addrspace(66)* getelementptr (%struct.mystruct, %struct.mystruct addrspace(66)* @output, i32 0, i32 1), align 4
	ret void
}

define i32 addrspace(11)* @bar(i32 addrspace(11)* addrspace(22)* addrspace(33)* %x) {
entry:
	%tmp1 = load i32 addrspace(11)* addrspace(22)*, i32 addrspace(11)* addrspace(22)* addrspace(33)* @y, align 4		
	store i32 addrspace(11)* addrspace(22)* %tmp1, i32 addrspace(11)* addrspace(22)* addrspace(33)* %x, align 4
	%tmp5 = load i32 addrspace(11)*, i32 addrspace(11)* addrspace(22)* %tmp1, align 4		
	ret i32 addrspace(11)* %tmp5
}
