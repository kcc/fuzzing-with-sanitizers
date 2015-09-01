



define i32 @check_indirect_br(i8* %target) nounwind {
entry:
        indirectbr i8* %target, [label %test_label]

test_label:
        br label %ret

ret:
        ret i32 -1
}
