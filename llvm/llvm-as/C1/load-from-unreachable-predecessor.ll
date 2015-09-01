




define i32 @f(i32** %f) {



bb0:
  %bar = load i32*, i32** %f
  br label %bb2
bb1:
  %zed = load i32*, i32** %f
  br i1 false, label %bb1, label %bb2
bb2:
  %foo = phi i32* [ null, %bb0 ], [ %zed, %bb1 ]
  %storemerge = load i32, i32* %foo
  ret i32 %storemerge
}
