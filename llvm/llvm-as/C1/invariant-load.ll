


define i32 @test1(i32* nocapture %p, i8* nocapture %q) {



entry:
  %x = load i32, i32* %p, align 4, !invariant.load !0
  %conv = trunc i32 %x to i8
  store i8 %conv, i8* %q, align 1
  %y = load i32, i32* %p, align 4, !invariant.load !0
  %add = add i32 %y, 1
  ret i32 %add
}

define i32 @test2(i32* nocapture %p, i8* nocapture %q) {



entry:
  %x = load i32, i32* %p, align 4
  %conv = trunc i32 %x to i8
  store i8 %conv, i8* %q, align 1
  %y = load i32, i32* %p, align 4, !invariant.load !0
  %add = add i32 %y, 1
  ret i32 %add
}



define i32 @test3(i1 %cnd, i32* %p, i32* %q) {


entry:
  %v1 = load i32, i32* %p
  br i1 %cnd, label %bb1, label %bb2

bb1:
  store i32 5, i32* %q
  br label %bb2

bb2:
  %v2 = load i32, i32* %p, !invariant.load !0
  %res = sub i32 %v1, %v2
  ret i32 %res
}



define i32 @test4(i1 %cnd, i32* %p, i32* %q) {


entry:
  %v1 = load i32, i32* %p, !invariant.load !0
  br i1 %cnd, label %bb1, label %bb2

bb1:
  store i32 5, i32* %q
  br label %bb2

bb2:
  %v2 = load i32, i32* %p
  %res = sub i32 %v1, %v2
  ret i32 %res
}




define i32 @test5(i1 %cnd, i32* %p) {




entry:
  %v1 = load i32, i32* %p, !invariant.load !0
  store i32 5, i32* %p 
  %v2 = load i32, i32* %p, !invariant.load !0
  ret i32 %v2
}


declare void @foo()


define i32 @test6(i1 %cnd, i32* %p) {




entry:
  %v1 = load i32, i32* %p, !invariant.load !0
  call void @foo()
  %v2 = load i32, i32* %p, !invariant.load !0
  %res = sub i32 %v1, %v2
  ret i32 %res
}

declare noalias i32* @bar(...) 



define i32 @test7(i1 %cnd, i32* %p) {




entry:
  %v1 = load i32, i32* %p, !invariant.load !0
  call i32* (...) @bar(i32* %p)
  %v2 = load i32, i32* %p, !invariant.load !0
  %res = sub i32 %v1, %v2
  ret i32 %res
}


!0 = !{ }

