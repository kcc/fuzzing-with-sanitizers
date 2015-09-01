


define void @test() {
bb38.i:
	%varspec.0.i1014 = bitcast i64 123814269237067777 to i64		
	%locspec.0.i1015 = bitcast i32 1 to i32		
	%tmp51391.i1018 = lshr i64 %varspec.0.i1014, 16		
	%tmp51392.i1019 = trunc i64 %tmp51391.i1018 to i32		
	%tmp51392.mask.i1020 = lshr i32 %tmp51392.i1019, 29		
	%tmp7.i1021 = and i32 %tmp51392.mask.i1020, 1		
	%tmp18.i1026 = lshr i32 %tmp51392.i1019, 31		
	%tmp18.i1027 = trunc i32 %tmp18.i1026 to i8		
	br i1 false, label %cond_false1148.i1653, label %bb377.i1259

bb377.i1259:		
	br i1 false, label %cond_true541.i1317, label %cond_false1148.i1653

cond_true541.i1317:		
	%tmp545.i1318 = lshr i32 %locspec.0.i1015, 10		
	%tmp550.i1319 = lshr i32 %locspec.0.i1015, 4		
	%tmp550551.i1320 = and i32 %tmp550.i1319, 63		
	%tmp553.i1321 = icmp ult i32 %tmp550551.i1320, 4		
	%tmp558.i1322 = icmp eq i32 %tmp7.i1021, 0		
	%bothcond.i1326 = or i1 %tmp553.i1321, false		
	%bothcond1.i1327 = or i1 %bothcond.i1326, false		
	%bothcond2.not.i1328 = or i1 %bothcond1.i1327, false		
	%bothcond3.i1329 = or i1 %bothcond2.not.i1328, %tmp558.i1322		
	br i1 false, label %cond_true583.i1333, label %cond_next592.i1337

cond_true583.i1333:		
	br i1 false, label %cond_true586.i1335, label %cond_next592.i1337

cond_true586.i1335:		
	br label %cond_true.i

cond_next592.i1337:		
	%mask_z.0.i1339 = phi i32 [ %tmp18.i1026, %cond_true541.i1317 ], [ 0, %cond_true583.i1333 ]		
	%tmp594.i1340 = and i32 %tmp545.i1318, 15		
	br label %cond_true.i

cond_false1148.i1653:		
	%tmp1150.i1654 = icmp eq i32 %tmp7.i1021, 0		
	%tmp1160.i1656 = icmp eq i8 %tmp18.i1027, 0		
	%bothcond8.i1658 = or i1 %tmp1150.i1654, %tmp1160.i1656		
	%bothcond9.i1659 = or i1 %bothcond8.i1658, false		
	br label %cond_true.i

cond_true.i:		
	ret void
}
