



define void @test1() {
entry:
  switch i128 undef, label %exit [
    i128 55340232221128654848, label %exit
    i128 92233720368547758080, label %exit
    i128 73786976294838206464, label %exit
    i128 147573952589676412928, label %exit
  ]
exit:
  unreachable
}



define void @test2() {
entry:
	br i1 false, label %cond_next954, label %cond_true924

cond_true924:		
	ret void

cond_next954:		
	switch i8 0, label %cleanup7419 [
		 i8 1, label %bb956
		 i8 2, label %bb1069
		 i8 4, label %bb7328
		 i8 5, label %bb1267
		 i8 8, label %bb1348
		 i8 9, label %bb7328
		 i8 11, label %bb1439
		 i8 12, label %bb1484
		 i8 13, label %bb1706
		 i8 14, label %bb1783
		 i8 17, label %bb1925
		 i8 18, label %bb1929
		 i8 19, label %bb2240
		 i8 25, label %bb2447
		 i8 27, label %bb2480
		 i8 29, label %bb2590
		 i8 30, label %bb2594
		 i8 31, label %bb2621
		 i8 32, label %bb2664
		 i8 33, label %bb2697
		 i8 34, label %bb2735
		 i8 37, label %bb2786
		 i8 38, label %bb2849
		 i8 39, label %bb3269
		 i8 41, label %bb3303
		 i8 42, label %bb3346
		 i8 43, label %bb3391
		 i8 44, label %bb3395
		 i8 50, label %bb3673
		 i8 52, label %bb3677
		 i8 53, label %bb3693
		 i8 54, label %bb7328
		 i8 56, label %bb3758
		 i8 57, label %bb3787
		 i8 64, label %bb5019
		 i8 68, label %cond_true4235
		 i8 69, label %bb4325
		 i8 70, label %bb4526
		 i8 72, label %bb4618
		 i8 73, label %bb4991
		 i8 80, label %bb5012
		 i8 82, label %bb5019
		 i8 84, label %bb5518
		 i8 86, label %bb5752
		 i8 87, label %bb5953
		 i8 89, label %bb6040
		 i8 90, label %bb6132
		 i8 92, label %bb6186
		 i8 93, label %bb6151
		 i8 94, label %bb6155
		 i8 97, label %bb6355
		 i8 98, label %bb5019
		 i8 99, label %bb6401
		 i8 101, label %bb5019
		 i8 102, label %bb1484
		 i8 104, label %bb7064
		 i8 105, label %bb7068
		 i8 106, label %bb7072
		 i8 108, label %bb1065
		 i8 109, label %bb1702
		 i8 110, label %bb2200
		 i8 111, label %bb2731
		 i8 112, label %bb2782
		 i8 113, label %bb2845
		 i8 114, label %bb2875
		 i8 115, label %bb3669
		 i8 116, label %bb7316
		 i8 117, label %bb7316
		 i8 118, label %bb3875
		 i8 119, label %bb4359
		 i8 120, label %bb4987
		 i8 121, label %bb5008
		 i8 122, label %bb5786
		 i8 123, label %bb6147
		 i8 124, label %bb6916
		 i8 125, label %bb6920
		 i8 126, label %bb6955
		 i8 127, label %bb6990
		 i8 -128, label %bb7027
		 i8 -127, label %bb3879
		 i8 -126, label %bb4700
		 i8 -125, label %bb7076
		 i8 -124, label %bb2366
		 i8 -123, label %bb2366
		 i8 -122, label %bb5490
	]

bb956:		
	ret void

bb1065:		
	ret void

bb1069:		
	ret void

bb1267:		
	ret void

bb1348:		
	ret void

bb1439:		
	ret void

bb1484:		
	ret void

bb1702:		
	ret void

bb1706:		
	ret void

bb1783:		
	ret void

bb1925:		
	ret void

bb1929:		
	ret void

bb2200:		
	ret void

bb2240:		
	ret void

bb2366:		
	ret void

bb2447:		
	ret void

bb2480:		
	ret void

bb2590:		
	ret void

bb2594:		
	ret void

bb2621:		
	ret void

bb2664:		
	ret void

bb2697:		
	ret void

bb2731:		
	ret void

bb2735:		
	ret void

bb2782:		
	ret void

bb2786:		
	ret void

bb2845:		
	ret void

bb2849:		
	ret void

bb2875:		
	ret void

bb3269:		
	ret void

bb3303:		
	ret void

bb3346:		
	ret void

bb3391:		
	ret void

bb3395:		
	ret void

bb3669:		
	ret void

bb3673:		
	ret void

bb3677:		
	ret void

bb3693:		
	ret void

bb3758:		
	ret void

bb3787:		
	ret void

bb3875:		
	ret void

bb3879:		
	ret void

cond_true4235:		
	ret void

bb4325:		
	ret void

bb4359:		
	ret void

bb4526:		
	ret void

bb4618:		
	ret void

bb4700:		
	ret void

bb4987:		
	ret void

bb4991:		
	ret void

bb5008:		
	ret void

bb5012:		
	ret void

bb5019:		
	ret void

bb5490:		
	ret void

bb5518:		
	ret void

bb5752:		
	ret void

bb5786:		
	ret void

bb5953:		
	ret void

bb6040:		
	ret void

bb6132:		
	ret void

bb6147:		
	ret void

bb6151:		
	ret void

bb6155:		
	ret void

bb6186:		
	ret void

bb6355:		
	ret void

bb6401:		
	ret void

bb6916:		
	ret void

bb6920:		
	ret void

bb6955:		
	ret void

bb6990:		
	ret void

bb7027:		
	ret void

bb7064:		
	ret void

bb7068:		
	ret void

bb7072:		
	ret void

bb7076:		
	ret void

bb7316:		
	ret void

bb7328:		
	ret void

cleanup7419:		
	ret void
}
