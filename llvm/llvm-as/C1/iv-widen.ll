


target datalayout = "n8:16:32:64"


target triple = "x86_64-apple-darwin"











define void @sloop(i32* %a) {
Prologue:
  br i1 undef, label %B18, label %B6

B18:                                        
  %.02 = phi i32 [ 0, %Prologue ], [ %tmp33, %B24 ]
  %tmp23 = zext i32 %.02 to i64
  %tmp33 = add i32 %.02, 1
  %o = getelementptr i32, i32* %a, i32 %.02
  %v = load i32, i32* %o
  %t = icmp eq i32 %v, 0
  br i1 %t, label %exit24, label %B24

B24:                                        
  %t2 = icmp eq i32 %tmp33, 20
  br i1 %t2, label %B6, label %B18

B6:                                       
  ret void

exit24:                      
  call void @dummy(i32 %.02)
  unreachable
}

declare void @dummy(i32)
