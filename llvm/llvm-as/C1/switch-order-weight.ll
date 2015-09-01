



define void @test1(i32 %x) nounwind uwtable ssp {
entry:
  switch i32 %x, label %if.end7 [
    i32 0, label %if.then
    i32 10, label %if.then2
    i32 20, label %if.then5
  ]







if.then:
  tail call void @unr(i32 23) noreturn nounwind
  unreachable

if.then2:
  tail call void @bar(i32 42) nounwind
  br label %if.end7

if.then5:
  tail call void @unr(i32 5) noreturn nounwind
  unreachable

if.end7:
  ret void
}

declare void @unr(i32) noreturn

declare void @bar(i32)
