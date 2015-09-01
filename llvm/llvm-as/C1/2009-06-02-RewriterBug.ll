


define void @sha256_block1(i32* nocapture %arr, i8* nocapture %in, i64 %num) nounwind {
entry:
	br i1 undef, label %while.end, label %bb.nph

bb.nph:		
	br label %while.body

while.body:		
	%indvar2787 = phi i64 [ 0, %bb.nph ], [ %indvar.next2788, %for.end ]		
	%tmp2791 = mul i64 %indvar2787, 44		
	%ctg22996 = getelementptr i8, i8* %in, i64 0		
	%conv = zext i32 undef to i64		
	%conv11 = zext i32 undef to i64		
	%tmp18 = load i32, i32* undef		
	%conv19 = zext i32 %tmp18 to i64		
	%tmp30 = load i32, i32* undef		
	%conv31 = zext i32 %tmp30 to i64		
	%ptrincdec3065 = load i8, i8* null		
	%conv442709 = zext i8 %ptrincdec3065 to i64		
	%shl45 = shl i64 %conv442709, 16		
	%conv632707 = zext i8 undef to i64		
	%or = or i64 %shl45, 0		
	%or55 = or i64 %or, %conv632707		
	%or64 = or i64 %or55, 0		
	%shr85 = lshr i64 %conv31, 25		
	%add = add i64 %conv11, 1508970993		
	%add95 = add i64 %add, 0		
	%add98 = add i64 %add95, 0		
	%add99 = add i64 %add98, %or64		
	%add134 = add i64 %add99, 0		
	store i32 undef, i32* undef
	%shl187 = shl i64 %add134, 21		
	%and203 = and i64 %add134, %conv31		
	%xor208 = xor i64 0, %and203		
	%add212 = add i64 0, %xor208		
	%add213 = add i64 %add212, 0		
	%add248 = add i64 %add213, 0		
	%conv2852690 = zext i8 undef to i64		
	%or277 = or i64 0, %conv2852690		
	%or286 = or i64 %or277, 0		
	%neg319 = xor i64 %add248, 4294967295		
	%and321 = and i64 %neg319, %conv31		
	%xor322 = xor i64 %and321, 0		
	%add314 = add i64 %conv, 2870763221		
	%add323 = add i64 %add314, %or286		
	%add326 = add i64 %add323, %xor322		
	%add327 = add i64 %add326, 0		
	%add362 = add i64 %add327, %conv19		
	%add365 = add i64 0, %add327		
	%shl409 = shl i64 %add362, 26		
	%and431 = and i64 %add362, %add248		
	%neg433 = xor i64 %add362, -1		
	%and435 = and i64 %add134, %neg433		
	%xor436 = xor i64 %and431, %and435		
	%add428 = add i64 %conv31, 3624381080		
	%add437 = add i64 %add428, 0		
	%add440 = add i64 %add437, %xor436		
	%add441 = add i64 %add440, 0		
	%shl443 = shl i64 %add365, 30		
	%and445 = lshr i64 %add365, 2		
	%shr446 = and i64 %and445, 1073741823		
	%or447 = or i64 %shr446, %shl443		
	%xor461 = xor i64 0, %or447		
	%add473 = add i64 %xor461, 0		
	%add479 = add i64 %add473, %add441		
	%conv4932682 = zext i8 undef to i64		
	%shl494 = shl i64 %conv4932682, 16		
	%ptrincdec4903012 = load i8, i8* null		
	%conv5032681 = zext i8 %ptrincdec4903012 to i64		
	%shl504 = shl i64 %conv5032681, 8		
	%ptrincdec5003009 = load i8, i8* null		
	%conv5132680 = zext i8 %ptrincdec5003009 to i64		
	%or495 = or i64 %shl494, 0		
	%or505 = or i64 %or495, %conv5132680		
	%or514 = or i64 %or505, %shl504		
	store i32 undef, i32* undef
	%or540 = or i64 undef, 0		
	%add542 = add i64 %add134, 310598401		
	%add551 = add i64 %add542, %or514		
	%add554 = add i64 %add551, 0		
	%add555 = add i64 %add554, 0		
	%or561 = or i64 undef, undef		
	%or567 = or i64 undef, undef		
	%and572 = lshr i64 %add479, 22		
	%shr573 = and i64 %and572, 1023		
	%or574 = or i64 %shr573, 0		
	%xor568 = xor i64 %or567, %or574		
	%xor575 = xor i64 %xor568, %or561		
	%add587 = add i64 %xor575, 0		
	%add593 = add i64 %add587, %add555		
	%ptrincdec6043000 = load i8, i8* null		
	%conv6172676 = zext i8 %ptrincdec6043000 to i64		
	%shl618 = shl i64 %conv6172676, 8		
	%ptrincdec6142997 = load i8, i8* %ctg22996		
	%conv6272675 = zext i8 %ptrincdec6142997 to i64		
	%or619 = or i64 0, %conv6272675		
	%or628 = or i64 %or619, %shl618		
	%add656 = add i64 %add248, 607225278		
	%add665 = add i64 %add656, %or628		
	%add668 = add i64 %add665, 0		
	%add669 = add i64 %add668, 0		
	%and699 = and i64 %add479, %add365		
	%xor700 = xor i64 0, %and699		
	%add701 = add i64 0, %xor700		
	%add707 = add i64 %add701, %add669		
	%ptrincdec6242994 = load i8, i8* null		
	%conv7122673 = zext i8 %ptrincdec6242994 to i64		
	%shl713 = shl i64 %conv7122673, 24		
	%conv7412670 = zext i8 undef to i64		
	%or723 = or i64 0, %shl713		
	%or733 = or i64 %or723, %conv7412670		
	%or742 = or i64 %or733, 0		
	%conv743 = trunc i64 %or742 to i32		
	store i32 %conv743, i32* undef
	%xor762 = xor i64 undef, 0		
	%add770 = add i64 %add362, 1426881987		
	%add779 = add i64 %add770, %or742		
	%add782 = add i64 %add779, 0		
	%add783 = add i64 %add782, 0		
	%shl785 = shl i64 %add707, 30		
	%and787 = lshr i64 %add707, 2		
	%shr788 = and i64 %and787, 1073741823		
	%or789 = or i64 %shr788, %shl785		
	%shl791 = shl i64 %add707, 19		
	%xor803 = xor i64 0, %or789		
	%and813 = and i64 %add593, %add479		
	%xor814 = xor i64 0, %and813		
	%add815 = add i64 %xor803, %xor814		
	%add821 = add i64 %add815, %add783		
	%add1160 = add i64 0, %add707		
	%add1157 = add i64 undef, undef		
	%ptrincdec11742940 = load i8, i8* null		
	%conv11872651 = zext i8 %ptrincdec11742940 to i64		
	%shl1188 = shl i64 %conv11872651, 8		
	%or1198 = or i64 0, %shl1188		
	store i32 undef, i32* undef
	%add1226 = add i64 %or1198, 3248222580		
	%add1235 = add i64 %add1226, 0		
	%add1238 = add i64 %add1235, 0		
	%add1239 = add i64 %add1238, 0		
	br label %for.cond

for.cond:		
	%add821.pn = phi i64 [ %add821, %while.body ], [ undef, %for.body ]		
	%add1239.pn = phi i64 [ %add1239, %while.body ], [ 0, %for.body ]		
	br i1 undef, label %for.end, label %for.body

for.body:		
	br label %for.cond

for.end:		
	%indvar.next2788 = add i64 %indvar2787, 1		
	br i1 undef, label %while.end, label %while.body

while.end:		
	ret void
}

define void @sha256_block2(i32* nocapture %arr, i8* nocapture %in, i64 %num) nounwind {
entry:
	br i1 undef, label %while.end, label %bb.nph

bb.nph:		
	%arrayidx5 = getelementptr i32, i32* %arr, i64 1		
	%arrayidx9 = getelementptr i32, i32* %arr, i64 2		
	%arrayidx13 = getelementptr i32, i32* %arr, i64 3		
	%arrayidx25 = getelementptr i32, i32* %arr, i64 6		
	%arrayidx29 = getelementptr i32, i32* %arr, i64 7		
	br label %while.body

while.body:		
	%tmp3 = load i32, i32* %arr		
	%conv = zext i32 %tmp3 to i64		
	%tmp10 = load i32, i32* %arrayidx9		
	%conv11 = zext i32 %tmp10 to i64		
	%tmp14 = load i32, i32* %arrayidx13		
	%conv15 = zext i32 %tmp14 to i64		
	%tmp18 = load i32, i32* undef		
	%conv19 = zext i32 %tmp18 to i64		
	%conv23 = zext i32 undef to i64		
	%tmp26 = load i32, i32* %arrayidx25		
	%conv27 = zext i32 %tmp26 to i64		
	%tmp30 = load i32, i32* %arrayidx29		
	%conv31 = zext i32 %tmp30 to i64		
	%shl72 = shl i64 %conv31, 26		
	%shr = lshr i64 %conv31, 6		
	%or74 = or i64 %shl72, %shr		
	%shr85 = lshr i64 %conv31, 25		
	%xor87 = xor i64 0, %or74		
	%and902706 = and i32 %tmp30, %tmp3		
	%and90 = zext i32 %and902706 to i64		
	%xor94 = xor i64 0, %and90		
	%add = add i64 %conv11, 1508970993		
	%add95 = add i64 %add, %xor94		
	%add98 = add i64 %add95, %xor87		
	%add99 = add i64 %add98, 0		
	%xor130 = zext i32 undef to i64		
	%add134 = add i64 %add99, %conv27		
	%add131 = add i64 %xor130, 0		
	%add137 = add i64 %add131, %add99		
	%conv1422700 = zext i8 undef to i64		
	%shl143 = shl i64 %conv1422700, 24		
	%ptrincdec1393051 = load i8, i8* undef		
	%conv1512699 = zext i8 %ptrincdec1393051 to i64		
	%shl152 = shl i64 %conv1512699, 16		
	%conv1712697 = zext i8 undef to i64		
	%or153 = or i64 %shl152, %shl143		
	%or163 = or i64 %or153, %conv1712697		
	%or172 = or i64 %or163, 0		
	%and203 = and i64 %add134, %conv31		
	%xor208 = xor i64 0, %and203		
	%add200 = add i64 0, 2453635748		
	%add209 = add i64 %add200, %or172		
	%add212 = add i64 %add209, %xor208		
	%add213 = add i64 %add212, 0		
	%shl228 = shl i64 %add137, 10		
	%and230 = lshr i64 %add137, 22		
	%shr231 = and i64 %and230, 1023		
	%or232 = or i64 %shr231, %shl228		
	%xor226 = xor i64 0, %or232		
	%xor233 = xor i64 %xor226, 0		
	%and2362695 = zext i32 undef to i64		
	%xor240 = and i64 %add137, %and2362695		
	%and2432694 = and i32 %tmp18, %tmp14		
	%and243 = zext i32 %and2432694 to i64		
	%xor244 = xor i64 %xor240, %and243		
	%add248 = add i64 %add213, %conv23		
	%add245 = add i64 %xor233, %xor244		
	%add251 = add i64 %add245, %add213		
	%conv2752691 = zext i8 undef to i64		
	%shl276 = shl i64 %conv2752691, 8		
	%and317 = and i64 %add248, %add134		
	%neg319 = xor i64 %add248, 4294967295		
	%and321 = and i64 %neg319, %conv31		
	%xor322 = xor i64 %and321, %and317		
	%add314 = add i64 %conv, 2870763221		
	%add323 = add i64 %add314, 0		
	%add326 = add i64 %add323, %xor322		
	%add327 = add i64 %add326, 0		
	%and3502689 = xor i64 %add137, %conv15		
	%xor354 = and i64 %add251, %and3502689		
	%and357 = and i64 %add137, %conv15		
	%xor358 = xor i64 %xor354, %and357		
	%add362 = add i64 %add327, %conv19		
	%add359 = add i64 0, %xor358		
	%add365 = add i64 %add359, %add327		
	%add770 = add i64 %add362, 1426881987		
	%add779 = add i64 %add770, 0		
	%add782 = add i64 %add779, 0		
	%add783 = add i64 %add782, 0		
	%add818 = add i64 %add783, %add365		
	%add821 = add i64 0, %add783		
	store i32 undef, i32* undef
	%add1046 = add i64 undef, undef		
	%add1160 = add i64 undef, undef		
	store i32 0, i32* undef
	%add1235 = add i64 0, %add818		
	%add1238 = add i64 %add1235, 0		
	%add1239 = add i64 %add1238, 0		
	br label %for.cond

for.cond:		
	%h.0 = phi i64 [ undef, %while.body ], [ %add2035, %for.body ]		
	%g.0 = phi i64 [ %add1046, %while.body ], [ undef, %for.body ]		
	%f.0 = phi i64 [ %add1160, %while.body ], [ undef, %for.body ]		
	%add821.pn = phi i64 [ %add821, %while.body ], [ undef, %for.body ]		
	%add1239.pn2648 = phi i64 [ %add1239, %while.body ], [ undef, %for.body ]		
	%d.0 = phi i64 [ undef, %while.body ], [ %add2038, %for.body ]		
	br i1 undef, label %for.end, label %for.body

for.body:		
	%conv1390 = zext i32 undef to i64		
	%add1375 = add i64 0, %h.0		
	%add1384 = add i64 %add1375, 0		
	%add1391 = add i64 %add1384, %conv1390		
	%add1392 = add i64 %add1391, 0		
	%or1411 = or i64 0, undef		
	%xor1405 = xor i64 0, %or1411		
	%xor1412 = xor i64 %xor1405, 0		
	%add1427 = add i64 %add1392, %d.0		
	%add1424 = add i64 %xor1412, 0		
	%add1430 = add i64 %add1424, %add1392		
	%tmp1438 = load i32, i32* undef		
	%conv1439 = zext i32 %tmp1438 to i64		
	%shl1441 = shl i64 %conv1439, 25		
	%shr1444 = lshr i64 %conv1439, 7		
	%or1445 = or i64 %shl1441, %shr1444		
	%shr1450 = lshr i64 %conv1439, 18		
	%or1451 = or i64 0, %shr1450		
	%shr1454 = lshr i64 %conv1439, 3		
	%xor1452 = xor i64 %or1451, %shr1454		
	%xor1455 = xor i64 %xor1452, %or1445		
	%conv1464 = zext i32 undef to i64		
	%shl1466 = shl i64 %conv1464, 15		
	%shr1469 = lshr i64 %conv1464, 17		
	%or1470 = or i64 %shl1466, %shr1469		
	%shr1475 = lshr i64 %conv1464, 19		
	%or1476 = or i64 0, %shr1475		
	%shr1479 = lshr i64 %conv1464, 10		
	%xor1477 = xor i64 %or1476, %shr1479		
	%xor1480 = xor i64 %xor1477, %or1470		
	%tmp1499 = load i32, i32* null		
	%conv1500 = zext i32 %tmp1499 to i64		
	%add1491 = add i64 %conv1500, 0		
	%add1501 = add i64 %add1491, %xor1455		
	%add1502 = add i64 %add1501, %xor1480		
	%conv1504 = and i64 %add1502, 4294967295		
	%tmp1541 = load i32, i32* undef		
	%conv1542 = zext i32 %tmp1541 to i64		
	%add1527 = add i64 %conv1542, %g.0		
	%add1536 = add i64 %add1527, 0		
	%add1543 = add i64 %add1536, %conv1504		
	%add1544 = add i64 %add1543, 0		
	%shl1546 = shl i64 %add1430, 30		
	%and1548 = lshr i64 %add1430, 2		
	%shr1549 = and i64 %and1548, 1073741823		
	%or1550 = or i64 %shr1549, %shl1546		
	%shl1552 = shl i64 %add1430, 19		
	%or1556 = or i64 0, %shl1552		
	%shl1559 = shl i64 %add1430, 10		
	%or1563 = or i64 0, %shl1559		
	%xor1557 = xor i64 %or1556, %or1563		
	%xor1564 = xor i64 %xor1557, %or1550		
	%add1576 = add i64 %xor1564, 0		
	%add1582 = add i64 %add1576, %add1544		
	store i32 undef, i32* undef
	%tmp1693 = load i32, i32* undef		
	%conv1694 = zext i32 %tmp1693 to i64		
	%add1679 = add i64 %conv1694, %f.0		
	%add1688 = add i64 %add1679, 0		
	%add1695 = add i64 %add1688, 0		
	%add1696 = add i64 %add1695, 0		
	%shl1698 = shl i64 %add1582, 30		
	%shl1704 = shl i64 %add1582, 19		
	%add1734 = add i64 0, %add1696		
	%add1983 = add i64 0, %add1427		
	%add1992 = add i64 %add1983, 0		
	%add1999 = add i64 %add1992, 0		
	%add2000 = add i64 %add1999, 0		
	%and2030 = and i64 %add1734, %add1582		
	%xor2031 = xor i64 0, %and2030		
	%add2035 = add i64 %add2000, %add1430		
	%add2032 = add i64 0, %xor2031		
	%add2038 = add i64 %add2032, %add2000		
	store i32 0, i32* undef
	br label %for.cond

for.end:		
	store i32 undef, i32* %arrayidx5
	store i32 undef, i32* %arrayidx9
	%d.02641 = trunc i64 %d.0 to i32		
	%conv2524 = add i32 %tmp14, %d.02641		
	store i32 %conv2524, i32* %arrayidx13
	%exitcond2789 = icmp eq i64 undef, %num		
	br i1 %exitcond2789, label %while.end, label %while.body

while.end:		
	ret void
}
