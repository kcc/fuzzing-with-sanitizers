







@Var1 = external dllimport global i32
@Var2 = available_externally dllimport unnamed_addr constant i32 1

declare dllimport void @fun()

define available_externally dllimport void @inline1() {
	ret void
}

define available_externally dllimport void @inline2() {
	ret void
}

declare void @dummy(...)

define void @use() nounwind {



  call void @fun()



  call void @inline1()
  call void @inline2()









  %1 = load i32, i32* @Var1
  %2 = load i32, i32* @Var2
  call void(...) @dummy(i32 %1, i32 %2)

  ret void
}
