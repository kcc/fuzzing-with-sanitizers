

define void @test1(i1 %C, i1* %BP) {



entry:
        br i1 %C, label %T, label %F
T:
        store i1 %C, i1* %BP
        unreachable
F:
        ret void
}

define void @test2() personality i32 (...)* @__gxx_personality_v0 {




entry:
        invoke void @test2( )
                        to label %N unwind label %U
U:
  %res = landingpad { i8* }
          cleanup
        unreachable
N:
        ret void
}

declare i32 @__gxx_personality_v0(...)

define i32 @test3(i32 %v) {





entry:
        switch i32 %v, label %default [
                 i32 1, label %U
                 i32 2, label %T
        ]
default:
        ret i32 1
U:
        unreachable
T:
        ret i32 2
}






define void @test5(i1 %cond, i8* %ptr) {







entry:
  br i1 %cond, label %bb1, label %bb3

bb3:
 br label %bb2

bb1:
 br label %bb2

bb2:
  %ptr.2 = phi i8* [ %ptr, %bb3 ], [ null, %bb1 ]
  store i8 2, i8* %ptr.2, align 8
  ret void
}







define void @test6(i1 %cond, i8* %ptr) {
entry:
  br i1 %cond, label %bb1, label %bb2

bb1:
  br label %bb2

bb2:
  %ptr.2 = phi i8* [ %ptr, %entry ], [ null, %bb1 ]
  store i8 2, i8* %ptr.2, align 8
  ret void
}
