

define i32 @foo() nounwind readonly {
entry:
	%tmp = load i32*, i32* addrspace(257)* getelementptr (i32*, i32* addrspace(257)* inttoptr (i32 72 to i32* addrspace(257)*), i32 31)		
	%tmp1 = load i32, i32* %tmp		
	ret i32 %tmp1
}
