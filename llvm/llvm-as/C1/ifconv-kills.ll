

declare i32 @f(i32 %p0, i32 %p1)

define i32 @foo(i32* %ptr) {
entry:
  %cmp = icmp ne i32* %ptr, null
  br i1 %cmp, label %if.then, label %if.else


if.then:
  
  %valt = load i32, i32* %ptr, align 4
  br label %return

if.else:
  
  
  
  %addr = getelementptr inbounds i32, i32* %ptr, i32 4
  %vale = load i32, i32* %addr, align 4
  br label %return

return:
  %phival = phi i32 [ %valt, %if.then ], [ %vale, %if.else ]
  
  
  %retval = call i32 @f (i32 0, i32 %phival)
  ret i32 %retval
}
