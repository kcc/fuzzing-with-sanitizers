

define void @f() {

entry:
  br label %bb0

bb0:
  %tobool7 = icmp eq i1 undef, undef
  br label %bb1

bb1:
  br i1 undef, label %bb0, label %bb0

unreachable:


  br i1 %tobool7, label %unreachable, label %unreachable

bb3:
  unreachable
}
