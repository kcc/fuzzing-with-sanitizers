


@G = internal addrspace(1) global i32 0




define void @set1() {
  store i32 0, i32 addrspace(1)* @G

  ret void
}

define void @set2() {
  store i32 1, i32 addrspace(1)* @G

  ret void
}

define i1 @get() {

  %A = load i32, i32 addrspace(1) * @G
  %C = icmp slt i32 %A, 2
  ret i1 %C

}

