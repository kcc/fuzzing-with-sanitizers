


	%struct = type {  }

declare void @foo(...)

define void @bar() {
	call void (...) @foo(%struct* byval null )
	ret void
}
