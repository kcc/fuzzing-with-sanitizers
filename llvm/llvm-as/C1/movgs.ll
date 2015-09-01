



define i32 @test1() nounwind readonly {











entry:
	%tmp = load i32*, i32* addrspace(256)* getelementptr (i32*, i32* addrspace(256)* inttoptr (i32 72 to i32* addrspace(256)*), i32 31)		
	%tmp1 = load i32, i32* %tmp		
	ret i32 %tmp1
}

define i64 @test2(void (i8*)* addrspace(256)* %tmp8) nounwind {

















entry:
  %tmp9 = load void (i8*)*, void (i8*)* addrspace(256)* %tmp8, align 8
  tail call void %tmp9(i8* undef) nounwind optsize
  ret i64 0
}

define <2 x i64> @pmovsxwd_1(i64 addrspace(256)* %p) nounwind readonly {










entry:
  %0 = load i64, i64 addrspace(256)* %p
  %tmp2 = insertelement <2 x i64> zeroinitializer, i64 %0, i32 0
  %1 = bitcast <2 x i64> %tmp2 to <8 x i16>
  %2 = tail call <4 x i32> @llvm.x86.sse41.pmovsxwd(<8 x i16> %1) nounwind readnone
  %3 = bitcast <4 x i32> %2 to <2 x i64>
  ret <2 x i64> %3
}



define i32 @test_no_cse() nounwind readonly {















entry:
	%tmp = load i32*, i32* addrspace(256)* getelementptr (i32*, i32* addrspace(256)* inttoptr (i32 72 to i32* addrspace(256)*), i32 31)		
	%tmp1 = load i32, i32* %tmp		
	%tmp2 = load i32*, i32* addrspace(257)* getelementptr (i32*, i32* addrspace(257)* inttoptr (i32 72 to i32* addrspace(257)*), i32 31)		
	%tmp3 = load i32, i32* %tmp2		
	%tmp4 = add i32 %tmp1, %tmp3
	ret i32 %tmp4
}

declare <4 x i32> @llvm.x86.sse41.pmovsxwd(<8 x i16>) nounwind readnone
