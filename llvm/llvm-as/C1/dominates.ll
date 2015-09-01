

define i32 @f1(i32 %x) {
       %y = add i32 %z, 1
       %z = add i32 %x, 1
       ret i32 %y



}

declare i32 @g()
define void @f2(i32 %x) personality i32 ()* @g {
bb0:
  %y1 = invoke i32 @g() to label %bb1 unwind label %bb2
bb1:
  ret void
bb2:
  %y2 = phi i32 [%y1, %bb0]
  %y3 = landingpad i32
          cleanup
  ret void




}

define void @f3(i32 %x) personality i32 ()* @g {
bb0:
  %y1 = invoke i32 @g() to label %bb1 unwind label %bb2
bb1:
  ret void
bb2:
  %y2 = landingpad i32
          cleanup
  br label %bb3
bb3:
  %y3 = phi i32 [%y1, %bb2]
  ret void




}

define void @f4(i32 %x) {
bb0:
  br label %bb1
bb1:
  %y3 = phi i32 [%y1, %bb0]
  %y1 = add i32 %x, 1
  ret void



}
