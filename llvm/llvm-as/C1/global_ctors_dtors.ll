






@.str = private unnamed_addr constant [13 x i8] c"constructing\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"destructing\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"main\00", align 1

%ini = type { i32, void()*, i8* }

@llvm.global_ctors = appending global [3 x %ini ] [
  %ini { i32 65535, void ()* @a_global_ctor, i8* null },
  %ini { i32 65535, void ()* @b_global_ctor, i8* bitcast (i32* @b to i8*) },
  %ini { i32 65535, void ()* @c_global_ctor, i8* bitcast (i32* @c to i8*) }
]
@llvm.global_dtors = appending global [1 x %ini ] [%ini { i32 65535, void ()* @a_global_dtor, i8* null }]

declare i32 @puts(i8*)

define void @a_global_ctor() nounwind {
  %1 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  ret void
}

@b = global i32 zeroinitializer

@c = available_externally dllimport global i32 zeroinitializer

define void @b_global_ctor() nounwind {
  store i32 42, i32* @b
  ret void
}

define void @c_global_ctor() nounwind {
  store i32 42, i32* @c
  ret void
}

define void @a_global_dtor() nounwind {
  %1 = call i32 @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str2, i32 0, i32 0))
  ret void
}

define i32 @main() nounwind {
  %1 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str3, i32 0, i32 0))
  ret i32 0
}















