

	%list = type { i32, %list* }



declare %list* @llvm.gcread(%list*, %list**)

define %list* @tl(%list* %l) gc "example" {
	%hd.ptr = getelementptr %list, %list* %l, i32 0, i32 0
	%hd = call %list* @llvm.gcread(%list* %l, %list** %hd.ptr)
	ret i32 %tmp
}
