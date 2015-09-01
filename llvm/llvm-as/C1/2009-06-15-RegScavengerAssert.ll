

  %struct.term = type { i32, i32, i32 }

declare fastcc i8* @memory_Malloc(i32) nounwind

define fastcc %struct.term* @t1() nounwind {
entry:
	br i1 undef, label %bb, label %bb1

bb:		
	ret %struct.term* undef

bb1:		
	%0 = tail call fastcc i8* @memory_Malloc(i32 12) nounwind		
	%1 = tail call fastcc i8* @memory_Malloc(i32 12) nounwind		
	ret %struct.term* undef
}


define i32 @t2(i32 %argc, i8** nocapture %argv) nounwind {
entry:
	br label %bb6.i8

bb6.i8:		
	br i1 undef, label %memory_CalculateRealBlockSize1374.exit.i, label %bb.i.i9

bb.i.i9:		
	br label %memory_CalculateRealBlockSize1374.exit.i

memory_CalculateRealBlockSize1374.exit.i:		
	%0 = phi i32 [ undef, %bb.i.i9 ], [ undef, %bb6.i8 ]		
	store i32 %0, i32* undef, align 4
	%1 = urem i32 8184, %0		
	%2 = sub i32 8188, %1		
	store i32 %2, i32* undef, align 4
	br i1 undef, label %memory_Init.exit, label %bb6.i8

memory_Init.exit:		
	br label %bb.i.i

bb.i.i:		
	br i1 undef, label %symbol_Init.exit, label %bb.i.i

symbol_Init.exit:		
	br label %bb.i.i67

bb.i.i67:		
	br i1 undef, label %symbol_CreatePrecedence3522.exit, label %bb.i.i67

symbol_CreatePrecedence3522.exit:		
	br label %bb.i.i8.i

bb.i.i8.i:		
	br i1 undef, label %cont_Create.exit9.i, label %bb.i.i8.i

cont_Create.exit9.i:		
	br label %bb.i.i.i72

bb.i.i.i72:		
	br i1 undef, label %cont_Init.exit, label %bb.i.i.i72

cont_Init.exit:		
	br label %bb.i103

bb.i103:		
	br i1 undef, label %subs_Init.exit, label %bb.i103

subs_Init.exit:		
	br i1 undef, label %bb1.i.i.i80, label %cc_Init.exit

bb1.i.i.i80:		
	unreachable

cc_Init.exit:		
	br label %bb.i.i375

bb.i.i375:		
	br i1 undef, label %bb.i439, label %bb.i.i375

bb.i439:		
	br i1 undef, label %opts_DeclareSPASSFlagsAsOptions.exit, label %bb.i439

opts_DeclareSPASSFlagsAsOptions.exit:		
	br i1 undef, label %opts_TranslateShortOptDeclarations.exit.i, label %bb.i.i82

bb.i.i82:		
	unreachable

opts_TranslateShortOptDeclarations.exit.i:		
	br i1 undef, label %list_Length.exit.i.thread.i, label %bb.i.i4.i

list_Length.exit.i.thread.i:		
	br i1 undef, label %bb18.i.i.i, label %bb26.i.i.i

bb.i.i4.i:		
	unreachable

bb18.i.i.i:		
	unreachable

bb26.i.i.i:		
	br i1 undef, label %bb27.i142, label %opts_GetOptLongOnly.exit.thread97.i

opts_GetOptLongOnly.exit.thread97.i:		
	br label %bb27.i142

bb27.i142:		
	br label %bb1.i3.i

bb1.i3.i:		
	br i1 undef, label %opts_FreeLongOptsArray.exit.i, label %bb1.i3.i

opts_FreeLongOptsArray.exit.i:		
	br label %bb.i443

bb.i443:		
	br i1 undef, label %flag_InitStoreByDefaults3542.exit, label %bb.i443

flag_InitStoreByDefaults3542.exit:		
	br i1 undef, label %bb6.i449, label %bb.i503

bb6.i449:		
	unreachable

bb.i503:		
	br i1 undef, label %flag_CleanStore3464.exit, label %bb.i503

flag_CleanStore3464.exit:		
	br i1 undef, label %bb1.i81.i.preheader, label %bb.i173

bb.i173:		
	unreachable

bb1.i81.i.preheader:		
	br i1 undef, label %bb1.i64.i.preheader, label %bb5.i179

bb5.i179:		
	unreachable

bb1.i64.i.preheader:		
	br i1 undef, label %dfg_DeleteProofList.exit.i, label %bb.i9.i

bb.i9.i:		
	unreachable

dfg_DeleteProofList.exit.i:		
	br i1 undef, label %term_DeleteTermList621.exit.i, label %bb.i.i62.i

bb.i.i62.i:		
	br i1 undef, label %term_DeleteTermList621.exit.i, label %bb.i.i62.i

term_DeleteTermList621.exit.i:		
	br i1 undef, label %dfg_DFGParser.exit, label %bb.i.i211

bb.i.i211:		
	unreachable

dfg_DFGParser.exit:		
	br label %bb.i513

bb.i513:		
	br i1 undef, label %bb2.i516, label %bb1.i514

bb1.i514:		
	unreachable

bb2.i516:		
	br i1 undef, label %bb.i509, label %bb.i513

bb.i509:		
	br i1 undef, label %symbol_TransferPrecedence3468.exit511, label %bb.i509

symbol_TransferPrecedence3468.exit511:		
	br i1 undef, label %bb20, label %bb21

bb20:		
	unreachable

bb21:		
	br i1 undef, label %cnf_Init.exit, label %bb.i498

bb.i498:		
	unreachable

cnf_Init.exit:		
	br i1 undef, label %bb23, label %bb22

bb22:		
	br i1 undef, label %bb2.i.i496, label %bb.i.i494

bb.i.i494:		
	unreachable

bb2.i.i496:		
	unreachable

bb23:		
	br i1 undef, label %bb28, label %bb24

bb24:		
	unreachable

bb28:		
	br i1 undef, label %bb31, label %bb29

bb29:		
	unreachable

bb31:		
	br i1 undef, label %bb34, label %bb32

bb32:		
	unreachable

bb34:		
	br i1 undef, label %bb83, label %bb66

bb66:		
	unreachable

bb83:		
	br i1 undef, label %bb2.i1668, label %bb.i1667

bb.i1667:		
	unreachable

bb2.i1668:		
	br i1 undef, label %bb5.i205, label %bb3.i204

bb3.i204:		
	unreachable

bb5.i205:		
	br i1 undef, label %bb.i206.i, label %ana_AnalyzeSortStructure.exit.i

bb.i206.i:		
	br i1 undef, label %bb1.i207.i, label %ana_AnalyzeSortStructure.exit.i

bb1.i207.i:		
	br i1 undef, label %bb25.i1801.thread, label %bb.i1688

bb.i1688:		
	unreachable

bb25.i1801.thread:		
	unreachable

ana_AnalyzeSortStructure.exit.i:		
	br i1 undef, label %bb7.i207, label %bb.i1806

bb.i1806:		
	br i1 undef, label %bb2.i.i.i1811, label %bb.i.i.i1809

bb.i.i.i1809:		
	unreachable

bb2.i.i.i1811:		
	unreachable

bb7.i207:		
	br i1 undef, label %bb9.i, label %bb8.i

bb8.i:		
	unreachable

bb9.i:		
	br i1 undef, label %bb23.i, label %bb26.i

bb23.i:		
	br i1 undef, label %bb25.i, label %bb24.i

bb24.i:		
	br i1 undef, label %sort_SortTheoryIsTrivial.exit.i, label %bb.i2093

bb.i2093:		
	br label %bb.i2093

sort_SortTheoryIsTrivial.exit.i:		
	br i1 undef, label %bb3.i2141, label %bb4.i2143

bb3.i2141:		
	unreachable

bb4.i2143:		
	br i1 undef, label %bb8.i2178, label %bb5.i2144

bb5.i2144:		
	br i1 undef, label %bb7.i2177, label %bb1.i28.i

bb1.i28.i:		
	br i1 undef, label %bb4.i43.i, label %bb2.i.i2153

bb2.i.i2153:		
	br i1 undef, label %bb4.i.i33.i, label %bb.i.i30.i

bb.i.i30.i:		
	unreachable

bb4.i.i33.i:		
	br i1 undef, label %bb9.i.i36.i, label %bb5.i.i34.i

bb5.i.i34.i:		
	unreachable

bb9.i.i36.i:		
	br i1 undef, label %bb14.i.i.i2163, label %bb10.i.i37.i

bb10.i.i37.i:		
	unreachable

bb14.i.i.i2163:		
	br i1 undef, label %sort_LinkPrint.exit.i.i, label %bb15.i.i.i2164

bb15.i.i.i2164:		
	unreachable

sort_LinkPrint.exit.i.i:		
	unreachable

bb4.i43.i:		
	unreachable

bb7.i2177:		
	unreachable

bb8.i2178:		
	br i1 undef, label %sort_ApproxStaticSortTheory.exit, label %bb.i5.i2185.preheader

bb.i5.i2185.preheader:		
	br label %bb.i5.i2185

bb.i5.i2185:		
	br i1 undef, label %sort_ApproxStaticSortTheory.exit, label %bb.i5.i2185

sort_ApproxStaticSortTheory.exit:		
	br label %bb25.i

bb25.i:		
	unreachable

bb26.i:		
	unreachable
}
