



define void @f(i32* %p) nounwind {
entry:

  %p.addr = alloca i32*, align 4
  store i32* %p, i32** %p.addr, align 4
  %0 = load i32*, i32** %p.addr, align 4
  %add.ptr = getelementptr inbounds i32, i32* %0, i32 10
  %1 = load i32, i32* %add.ptr, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %add.ptr, align 4
  ret void
}

define void @g(i32* %p, i32 %i) nounwind {
entry:

  %p.addr = alloca i32*, align 4
  %i.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32*, i32** %p.addr, align 4
  %1 = load i32, i32* %i.addr, align 4
  %add.ptr = getelementptr inbounds i32, i32* %0, i32 %1
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i32 10
  %2 = load i32, i32* %add.ptr1, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %add.ptr1, align 4
  ret void
}
