





















define void @test() nounwind {
entry:
 %0 = tail call i32 (...) @foo() nounwind
 tail call void (...) @bar() nounwind
 ret void
}

declare i32 @foo(...)

declare void @bar(...)
















define i32 @test_tail_call_with_return() nounwind {
entry:
 %0 = tail call i32 (...) @foo() nounwind
 ret i32 %0
}
