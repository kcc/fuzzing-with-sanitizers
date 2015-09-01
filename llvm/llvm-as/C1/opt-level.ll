













define internal void @foo() {
  ret void
}



define internal i32 @bar(i1 %p) {
  br i1 %p, label %t, label %f

t:
  br label %end

f:
  br label %end

end:
  
  
  %r = phi i32 [ 1, %t ], [ 2, %f ]
  ret i32 %r
}

define void @baz() {
  call void @foo()
  %c = call i32 @bar(i1 true)
  ret void
}

@a = constant i32 1

!0 = !{!"bitset1", i32* @a, i32 0}




!llvm.bitsets = !{ !0 }
