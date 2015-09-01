



%X = type { i64, i64, i64 }
declare void @f(%X*)
define void @t() {
entry:
  %tmp = alloca %X
  call void @f(%X* %tmp)


  call void @f(%X* %tmp)               


  ret void 
}
