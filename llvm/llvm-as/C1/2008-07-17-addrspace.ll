







@struct = internal addrspace(1) global { i32, i32 } zeroinitializer
@array = internal addrspace(1) global [ 2 x i32 ] zeroinitializer 

define i32 @foo() {
  %A = load i32, i32 addrspace(1) * getelementptr ({ i32, i32 }, { i32, i32 } addrspace(1) * @struct, i32 0, i32 0)
  %B = load i32, i32 addrspace(1) * getelementptr ([ 2 x i32 ], [ 2 x i32 ] addrspace(1) * @array, i32 0, i32 0)
  
  %R = add i32 %A, %B
  ret i32 %R
}



define void @bar(i32 %R) {
  store i32 %R, i32 addrspace(1) * getelementptr ([ 2 x i32 ], [ 2 x i32 ] addrspace(1) * @array, i32 0, i32 0)
  store i32 %R, i32 addrspace(1) * getelementptr ({ i32, i32 }, { i32, i32 } addrspace(1) * @struct, i32 0, i32 0)
  ret void
}


