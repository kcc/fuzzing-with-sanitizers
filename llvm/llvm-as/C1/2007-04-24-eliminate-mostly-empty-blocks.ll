

define void @foo() {
entry:
	br i1 false, label %cond_next31, label %cond_true

cond_true:		
	br i1 false, label %cond_true19, label %cond_next31

cond_true19:		
	br i1 false, label %bb510, label %cond_next31

cond_next31:		
	br i1 false, label %cond_true61, label %cond_next78

cond_true61:		
	br label %cond_next78

cond_next78:		
	br i1 false, label %cond_true93, label %bb.preheader

cond_true93:		
	br label %bb.preheader

bb.preheader:		
	%iftmp.11.0.ph.ph = phi i16 [ 0, %cond_true93 ], [ 0, %cond_next78 ]		
	br label %bb

bb:		
	%n.1 = phi i16 [ %iftmp.11.0.ph.ph, %cond_next499 ], [ 0, %bb.preheader ]		
	br i1 false, label %bb148.preheader, label %bb493

bb148.preheader:		
	br label %bb148

bb148:		
	br i1 false, label %cond_next175, label %bb184

cond_next175:		
	br i1 false, label %bb184, label %bb185

bb184:		
	br label %bb185

bb185:		
	br i1 false, label %bb420.preheader, label %cond_true198

bb420.preheader:		
	br label %bb420

cond_true198:		
	br i1 false, label %bb294, label %cond_next208

cond_next208:		
	br i1 false, label %cond_next249, label %cond_true214

cond_true214:		
	br i1 false, label %bb294, label %cond_next262

cond_next249:		
	br i1 false, label %bb294, label %cond_next262

cond_next262:		
	br label %bb269

bb269:		
	br i1 false, label %cond_next285, label %cond_true279

cond_true279:		
	br label %cond_next285

cond_next285:		
	br i1 false, label %bb269, label %cond_next446.loopexit

bb294:		
	br i1 false, label %cond_next336, label %cond_true301

cond_true301:		
	br i1 false, label %cond_false398, label %cond_true344

cond_next336:		
	br i1 false, label %cond_false398, label %cond_true344

cond_true344:		
	br i1 false, label %cond_false381, label %cond_true351

cond_true351:		
	br label %cond_next387

cond_false381:		
	br label %cond_next387

cond_next387:		
	br label %cond_next401

cond_false398:		
	br label %cond_next401

cond_next401:		
	br i1 false, label %cond_next475, label %cond_true453

bb420:		
	br i1 false, label %cond_next434, label %cond_true428

cond_true428:		
	br label %cond_next434

cond_next434:		
	br i1 false, label %bb420, label %cond_next446.loopexit1

cond_next446.loopexit:		
	br label %cond_next446

cond_next446.loopexit1:		
	br label %cond_next446

cond_next446:		
	br i1 false, label %cond_next475, label %cond_true453

cond_true453:		
	br i1 false, label %cond_true458, label %cond_next475

cond_true458:		
	br label %cond_next475

cond_next475:		
	br i1 false, label %bb493.loopexit, label %bb148

bb493.loopexit:		
	br label %bb493

bb493:		
	br i1 false, label %cond_next499, label %bb510.loopexit

cond_next499:		
	br label %bb

bb510.loopexit:		
	br label %bb510

bb510:		
	br i1 false, label %cond_next524, label %cond_true517

cond_true517:		
	br label %cond_next524

cond_next524:		
	br i1 false, label %cond_next540, label %cond_true533

cond_true533:		
	br label %cond_next540

cond_next540:		
	br i1 false, label %cond_true554, label %cond_next560

cond_true554:		
	br label %cond_next560

cond_next560:		
	br i1 false, label %cond_true566, label %cond_next572

cond_true566:		
	br label %cond_next572

cond_next572:		
	br i1 false, label %bb608.preheader, label %bb791.preheader

bb608.preheader:		
	br label %bb608

bb608:		
	br i1 false, label %cond_false627, label %cond_true613

cond_true613:		
	br label %cond_next640

cond_false627:		
	br label %cond_next640

cond_next640:		
	br i1 false, label %cond_true653, label %cond_next671

cond_true653:		
	br label %cond_next671

cond_next671:		
	br i1 false, label %cond_true683, label %cond_next724

cond_true683:		
	br i1 false, label %cond_next724, label %L1

cond_next724:		
	br i1 false, label %cond_true735, label %L1

cond_true735:		
	br label %L1

L1:		
	br i1 false, label %cond_true745, label %cond_next771

cond_true745:		
	br label %cond_next771

cond_next771:		
	br i1 false, label %bb608, label %bb791.preheader.loopexit

bb791.preheader.loopexit:		
	br label %bb791.preheader

bb791.preheader:		
	br i1 false, label %cond_next797.us, label %bb809.split

cond_next797.us:		
	br label %bb608.preheader

bb809.split:		
	br i1 false, label %cond_next827, label %cond_true820

cond_true820:		
	br label %cond_next827

cond_next827:		
	br i1 false, label %cond_true833, label %cond_next840

cond_true833:		
	br label %cond_next840

cond_next840:		
	br i1 false, label %bb866, label %bb1245

bb866:		
	br i1 false, label %cond_true875, label %bb911

cond_true875:		
	br label %cond_next1180

bb911:		
	switch i32 0, label %bb1165 [
		 i32 0, label %bb915
		 i32 1, label %bb932
		 i32 2, label %bb941
		 i32 3, label %bb1029
		 i32 4, label %bb1036
		 i32 5, label %bb1069
		 i32 6, label %L3
	]

bb915:		
	br i1 false, label %cond_next1171, label %cond_next1180

bb932:		
	br label %L1970

bb941:		
	br label %L1970

L1970:		
	br label %bb1165

bb1029:		
	br label %L4

bb1036:		
	br label %L4

bb1069:		
	br i1 false, label %cond_next1121, label %cond_true1108

L3:		
	br i1 false, label %cond_next1121, label %cond_true1108

cond_true1108:		
	br label %L4

cond_next1121:		
	br label %L4

L4:		
	br label %bb1165

bb1165:		
	br i1 false, label %cond_next1171, label %cond_next1180

cond_next1171:		
	switch i32 0, label %bb1165 [
		 i32 0, label %bb915
		 i32 1, label %bb932
		 i32 2, label %bb941
		 i32 3, label %bb1029
		 i32 4, label %bb1036
		 i32 5, label %bb1069
		 i32 6, label %L3
	]

cond_next1180:		
	br label %bb1239

bb1239:		
	br i1 false, label %bb866, label %bb1245

bb1245:		
	br i1 false, label %cond_next1251, label %bb1257

cond_next1251:		
	br label %bb1239

bb1257:		
	ret void
}
