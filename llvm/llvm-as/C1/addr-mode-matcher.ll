











target datalayout = "e-m:o-p:32:32-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.6.0"

define void @foo(i32 %a) {
bb:
  br label %bb1692

bb1692:
  %tmp1694 = phi i32 [ 0, %bb ], [ %tmp1745, %bb1692 ]
  %xor = xor i32 0, %tmp1694


  %tmp1701 = shl i32 %xor, 2
  %tmp1702 = and i32 %tmp1701, 1020
  %tmp1703 = getelementptr inbounds [1028 x i8], [1028 x i8]* null, i32 0, i32 %tmp1702
  %tmp1704 = bitcast i8* %tmp1703 to i32*
  %load1 = load i32, i32* %tmp1704, align 4


  %tmp1698 = and i32 %xor, 255
  %tmp1706 = shl i32 %tmp1698, 2
  %tmp1707 = getelementptr inbounds [1028 x i8], [1028 x i8]* null, i32 0, i32 %tmp1706
  %tmp1708 = bitcast i8* %tmp1707 to i32*
  %load2 = load i32, i32* %tmp1708, align 4

  %tmp1710 = or i32 %load2, %a





  %tmp1711 = xor i32 %load1, %tmp1710

  %tmp1744 = getelementptr inbounds [256 x i32], [256 x i32]* null, i32 0, i32 %tmp1711
  store i32 0, i32* %tmp1744, align 4
  %tmp1745 = add i32 %tmp1694, 1
  indirectbr i8* undef, [label %bb1756, label %bb1692]

bb1756:
  br label %bb2705

bb2705:
  indirectbr i8* undef, [label %bb5721, label %bb5736]

bb5721:
  br label %bb2705

bb5736:
  ret void
}
