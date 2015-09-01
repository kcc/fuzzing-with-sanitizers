

define i32 @f1(i32 %a) {


    %tmp = tail call i32 @llvm.ctlz.i32(i32 %a, i1 true)
    ret i32 %tmp
}

declare i32 @llvm.ctlz.i32(i32, i1) nounwind readnone
