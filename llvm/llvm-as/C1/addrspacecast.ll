



define i32 @conv1(i32 addrspace(1)* %ptr) {






  %genptr = addrspacecast i32 addrspace(1)* %ptr to i32*
  %val = load i32, i32* %genptr
  ret i32 %val
}

define i32 @conv2(i32 addrspace(3)* %ptr) {






  %genptr = addrspacecast i32 addrspace(3)* %ptr to i32*
  %val = load i32, i32* %genptr
  ret i32 %val
}

define i32 @conv3(i32 addrspace(4)* %ptr) {






  %genptr = addrspacecast i32 addrspace(4)* %ptr to i32*
  %val = load i32, i32* %genptr
  ret i32 %val
}

define i32 @conv4(i32 addrspace(5)* %ptr) {






  %genptr = addrspacecast i32 addrspace(5)* %ptr to i32*
  %val = load i32, i32* %genptr
  ret i32 %val
}

define i32 @conv5(i32* %ptr) {






  %specptr = addrspacecast i32* %ptr to i32 addrspace(1)*
  %val = load i32, i32 addrspace(1)* %specptr
  ret i32 %val
}

define i32 @conv6(i32* %ptr) {






  %specptr = addrspacecast i32* %ptr to i32 addrspace(3)*
  %val = load i32, i32 addrspace(3)* %specptr
  ret i32 %val
}

define i32 @conv7(i32* %ptr) {






  %specptr = addrspacecast i32* %ptr to i32 addrspace(4)*
  %val = load i32, i32 addrspace(4)* %specptr
  ret i32 %val
}

define i32 @conv8(i32* %ptr) {






  %specptr = addrspacecast i32* %ptr to i32 addrspace(5)*
  %val = load i32, i32 addrspace(5)* %specptr
  ret i32 %val
}
