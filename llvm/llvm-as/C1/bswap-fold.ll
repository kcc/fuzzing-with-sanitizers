

define i1 @test1(i16 %tmp2) {



        %tmp10 = call i16 @llvm.bswap.i16( i16 %tmp2 )
        %tmp = icmp eq i16 %tmp10, 1
        ret i1 %tmp
}

define i1 @test2(i32 %tmp) {



        %tmp34 = tail call i32 @llvm.bswap.i32( i32 %tmp )
        %tmp.upgrd.1 = icmp eq i32 %tmp34, 1
        ret i1 %tmp.upgrd.1
}

define i1 @test3(i64 %tmp) {



        %tmp34 = tail call i64 @llvm.bswap.i64( i64 %tmp )
        %tmp.upgrd.2 = icmp eq i64 %tmp34, 1
        ret i1 %tmp.upgrd.2
}



define i32 @test4(i32 %a) nounwind  {



	%tmp2 = tail call i32 @llvm.bswap.i32( i32 %a )
	%tmp4 = lshr i32 %tmp2, 24
	ret i32 %tmp4
}


define i32 @test5(i32 %a) nounwind {


	%tmp2 = tail call i32 @llvm.bswap.i32( i32 %a )
	%tmp4 = tail call i32 @llvm.bswap.i32( i32 %tmp2 )
	ret i32 %tmp4
}


define i32 @test6(i32 %a) nounwind {



	%tmp2 = tail call i32 @llvm.bswap.i32( i32 %a )
	%tmp4 = and i32 %tmp2, 255
	ret i32 %tmp4
}


define i16 @test7(i32 %A) {




  %B = tail call i32 @llvm.bswap.i32(i32 %A) nounwind
  %C = trunc i32 %B to i16
  %D = tail call i16 @llvm.bswap.i16(i16 %C) nounwind
  ret i16 %D
}

define i16 @test8(i64 %A) {




  %B = tail call i64 @llvm.bswap.i64(i64 %A) nounwind 
  %C = trunc i64 %B to i16
  %D = tail call i16 @llvm.bswap.i16(i16 %C) nounwind
  ret i16 %D
}


define i64 @foo() {


  %a = call i64 @llvm.bswap.i64(i64 undef)
  ret i64 %a
}




define i16 @bs_and16i(i16 %a, i16 %b) #0 {




  %1 = tail call i16 @llvm.bswap.i16(i16 %a)
  %2 = and i16 %1, 10001
  ret i16 %2
}

define i16 @bs_and16(i16 %a, i16 %b) #0 {




  %tmp1 = tail call i16 @llvm.bswap.i16(i16 %a)
  %tmp2 = tail call i16 @llvm.bswap.i16(i16 %b)
  %tmp3 = and i16 %tmp1, %tmp2
  ret i16 %tmp3
}

define i16 @bs_or16(i16 %a, i16 %b) #0 {




  %tmp1 = tail call i16 @llvm.bswap.i16(i16 %a)
  %tmp2 = tail call i16 @llvm.bswap.i16(i16 %b)
  %tmp3 = or i16 %tmp1, %tmp2
  ret i16 %tmp3
}

define i16 @bs_xor16(i16 %a, i16 %b) #0 {




  %tmp1 = tail call i16 @llvm.bswap.i16(i16 %a)
  %tmp2 = tail call i16 @llvm.bswap.i16(i16 %b)
  %tmp3 = xor i16 %tmp1, %tmp2
  ret i16 %tmp3
}

define i32 @bs_and32i(i32 %a, i32 %b) #0 {




  %tmp1 = tail call i32 @llvm.bswap.i32(i32 %a)
  %tmp2 = and i32 %tmp1, 100001
  ret i32 %tmp2
}

define i32 @bs_and32(i32 %a, i32 %b) #0 {




  %tmp1 = tail call i32 @llvm.bswap.i32(i32 %a)
  %tmp2 = tail call i32 @llvm.bswap.i32(i32 %b)
  %tmp3 = and i32 %tmp1, %tmp2
  ret i32 %tmp3
}

define i32 @bs_or32(i32 %a, i32 %b) #0 {




  %tmp1 = tail call i32 @llvm.bswap.i32(i32 %a)
  %tmp2 = tail call i32 @llvm.bswap.i32(i32 %b)
  %tmp3 = or i32 %tmp1, %tmp2
  ret i32 %tmp3
}

define i32 @bs_xor32(i32 %a, i32 %b) #0 {




  %tmp1 = tail call i32 @llvm.bswap.i32(i32 %a)
  %tmp2 = tail call i32 @llvm.bswap.i32(i32 %b)
  %tmp3 = xor i32 %tmp1, %tmp2
  ret i32 %tmp3
}

define i64 @bs_and64i(i64 %a, i64 %b) #0 {




  %tmp1 = tail call i64 @llvm.bswap.i64(i64 %a)
  %tmp2 = and i64 %tmp1, 1000000001
  ret i64 %tmp2
}

define i64 @bs_and64(i64 %a, i64 %b) #0 {




  %tmp1 = tail call i64 @llvm.bswap.i64(i64 %a)
  %tmp2 = tail call i64 @llvm.bswap.i64(i64 %b)
  %tmp3 = and i64 %tmp1, %tmp2
  ret i64 %tmp3
}

define i64 @bs_or64(i64 %a, i64 %b) #0 {




  %tmp1 = tail call i64 @llvm.bswap.i64(i64 %a)
  %tmp2 = tail call i64 @llvm.bswap.i64(i64 %b)
  %tmp3 = or i64 %tmp1, %tmp2
  ret i64 %tmp3
}

define i64 @bs_xor64(i64 %a, i64 %b) #0 {




  %tmp1 = tail call i64 @llvm.bswap.i64(i64 %a)
  %tmp2 = tail call i64 @llvm.bswap.i64(i64 %b)
  %tmp3 = xor i64 %tmp1, %tmp2
  ret i64 %tmp3
}

declare i16 @llvm.bswap.i16(i16)
declare i32 @llvm.bswap.i32(i32)
declare i64 @llvm.bswap.i64(i64)
