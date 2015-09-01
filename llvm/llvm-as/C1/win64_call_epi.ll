

declare void @bar()
declare void @baz()
declare i32 @personality(...)


define void @foo1() personality i32 (...)* @personality {

    invoke void @bar()
        to label %normal
        unwind label %catch

normal:
    ret void

catch:
    %1 = landingpad { i8*, i32 } cleanup
    resume { i8*, i32 } %1
}













@something = global i32 0
define void @foo2(i1 zeroext %cond ) {
    br i1 %cond, label %a, label %b, !prof !0
a:
    call void @bar()
    br label %done
b:
    call void @baz()
    store i32 0, i32* @something
    br label %done
done:
    ret void
}
!0 = !{!"branch_weights", i32 100, i32 0}








define i32 @foo3() {
    call void @bar()
    ret i32 0
}






