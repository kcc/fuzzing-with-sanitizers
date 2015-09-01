
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

define i32 @_ZNK4llvm5APInt17countLeadingZerosEv(i64 *%t) nounwind {
        %tmp19 = load i64, i64* %t
        %tmp22 = tail call i64 @llvm.ctlz.i64( i64 %tmp19, i1 true )             
        %tmp23 = trunc i64 %tmp22 to i32
        %tmp89 = add i32 %tmp23, -64          
        %tmp90 = add i32 %tmp89, 0            
        ret i32 %tmp90






}

declare i64 @llvm.ctlz.i64(i64, i1)
