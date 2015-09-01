





@var = global i32 0

define void @test_frame_rip_conflict() {



  %stackvar = alloca i32

  %stackint = ptrtoint i32* %stackvar to i64
  %addr = add i64 ptrtoint(i32* @var to i64), %stackint

  call void @eat_i64(i64 %addr)
  ret void
}

declare void @eat_i64(i64)
