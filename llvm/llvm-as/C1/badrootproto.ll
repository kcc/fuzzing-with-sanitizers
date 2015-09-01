

	%list = type { i32, %list* }
	%meta = type opaque



declare void @llvm.gcroot(%list*, %meta*)

define void @root() gc "example" {
	%x.var = alloca i8*
	call void @llvm.gcroot(i8** %x.var, %meta* null)
}
