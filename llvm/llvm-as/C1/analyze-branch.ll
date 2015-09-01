




declare void @test_true()
declare void @test_false()


!0 = !{!"branch_weights", i32 64, i32 4}
!1 = !{!"branch_weights", i32 4, i32 64}

define void @test_Bcc_fallthrough_taken(i32 %in) nounwind {

  %tst = icmp eq i32 %in, 42
  br i1 %tst, label %true, label %false, !prof !0










true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}

define void @test_Bcc_fallthrough_nottaken(i32 %in) nounwind {

  %tst = icmp eq i32 %in, 42
  br i1 %tst, label %true, label %false, !prof !1










true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}

define void @test_CBZ_fallthrough_taken(i32 %in) nounwind {

  %tst = icmp eq i32 %in, 0
  br i1 %tst, label %true, label %false, !prof !0








true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}

define void @test_CBZ_fallthrough_nottaken(i64 %in) nounwind {

  %tst = icmp eq i64 %in, 0
  br i1 %tst, label %true, label %false, !prof !1








true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}

define void @test_CBNZ_fallthrough_taken(i32 %in) nounwind {

  %tst = icmp ne i32 %in, 0
  br i1 %tst, label %true, label %false, !prof !0








true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}

define void @test_CBNZ_fallthrough_nottaken(i64 %in) nounwind {

  %tst = icmp ne i64 %in, 0
  br i1 %tst, label %true, label %false, !prof !1








true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}

define void @test_TBZ_fallthrough_taken(i32 %in) nounwind {

  %bit = and i32 %in, 32768
  %tst = icmp eq i32 %bit, 0
  br i1 %tst, label %true, label %false, !prof !0








true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}

define void @test_TBZ_fallthrough_nottaken(i64 %in) nounwind {

  %bit = and i64 %in, 32768
  %tst = icmp eq i64 %bit, 0
  br i1 %tst, label %true, label %false, !prof !1








true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}


define void @test_TBNZ_fallthrough_taken(i32 %in) nounwind {

  %bit = and i32 %in, 32768
  %tst = icmp ne i32 %bit, 0
  br i1 %tst, label %true, label %false, !prof !0








true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}

define void @test_TBNZ_fallthrough_nottaken(i64 %in) nounwind {

  %bit = and i64 %in, 32768
  %tst = icmp ne i64 %bit, 0
  br i1 %tst, label %true, label %false, !prof !1








true:
  call void @test_true()
  ret void

false:
  call void @test_false()
  ret void
}

