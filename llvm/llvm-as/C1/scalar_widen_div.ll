





define void @vectorDiv (<2 x i32> addrspace(1)* %nsource, <2 x i32> addrspace(1)* %dsource, <2 x i32> addrspace(1)* %qdest) nounwind {




entry:
  %nsource.addr = alloca <2 x i32> addrspace(1)*, align 4
  %dsource.addr = alloca <2 x i32> addrspace(1)*, align 4
  %qdest.addr = alloca <2 x i32> addrspace(1)*, align 4
  %index = alloca i32, align 4
  store <2 x i32> addrspace(1)* %nsource, <2 x i32> addrspace(1)** %nsource.addr
  store <2 x i32> addrspace(1)* %dsource, <2 x i32> addrspace(1)** %dsource.addr
  store <2 x i32> addrspace(1)* %qdest, <2 x i32> addrspace(1)** %qdest.addr
  %tmp = load <2 x i32> addrspace(1)*, <2 x i32> addrspace(1)** %qdest.addr
  %tmp1 = load i32, i32* %index
  %arrayidx = getelementptr <2 x i32>, <2 x i32> addrspace(1)* %tmp, i32 %tmp1
  %tmp2 = load <2 x i32> addrspace(1)*, <2 x i32> addrspace(1)** %nsource.addr
  %tmp3 = load i32, i32* %index
  %arrayidx4 = getelementptr <2 x i32>, <2 x i32> addrspace(1)* %tmp2, i32 %tmp3
  %tmp5 = load <2 x i32>, <2 x i32> addrspace(1)* %arrayidx4
  %tmp6 = load <2 x i32> addrspace(1)*, <2 x i32> addrspace(1)** %dsource.addr
  %tmp7 = load i32, i32* %index
  %arrayidx8 = getelementptr <2 x i32>, <2 x i32> addrspace(1)* %tmp6, i32 %tmp7
  %tmp9 = load <2 x i32>, <2 x i32> addrspace(1)* %arrayidx8
  %tmp10 = sdiv <2 x i32> %tmp5, %tmp9
  store <2 x i32> %tmp10, <2 x i32> addrspace(1)* %arrayidx
  ret void
}


define <3 x i8> @test_char_div(<3 x i8> %num, <3 x i8> %div) {





  %div.r = sdiv <3 x i8> %num, %div
  ret <3 x i8>  %div.r
}


define <3 x i8> @test_uchar_div(<3 x i8> %num, <3 x i8> %div) {





  %div.r = udiv <3 x i8> %num, %div
  ret <3 x i8>  %div.r
}


define <5 x i16> @test_short_div(<5 x i16> %num, <5 x i16> %div) {







  %div.r = sdiv <5 x i16> %num, %div
  ret <5 x i16>  %div.r
}


define <4 x i16> @test_ushort_div(<4 x i16> %num, <4 x i16> %div) {






  %div.r = udiv <4 x i16> %num, %div
  ret <4 x i16>  %div.r
}


define <3 x i32> @test_uint_div(<3 x i32> %num, <3 x i32> %div) {





  %div.r = udiv <3 x i32> %num, %div
  ret <3 x i32>  %div.r
}


define <3 x i64> @test_long_div(<3 x i64> %num, <3 x i64> %div) {





  %div.r = sdiv <3 x i64> %num, %div
  ret <3 x i64>  %div.r
}


define <3 x i64> @test_ulong_div(<3 x i64> %num, <3 x i64> %div) {





  %div.r = udiv <3 x i64> %num, %div
  ret <3 x i64>  %div.r
}


define <4 x i8> @test_char_rem(<4 x i8> %num, <4 x i8> %rem) {






  %rem.r = srem <4 x i8> %num, %rem
  ret <4 x i8>  %rem.r
}


define <5 x i16> @test_short_rem(<5 x i16> %num, <5 x i16> %rem) {







  %rem.r = srem <5 x i16> %num, %rem
  ret <5 x i16>  %rem.r
}


define <4 x i32> @test_uint_rem(<4 x i32> %num, <4 x i32> %rem) {






  %rem.r = srem <4 x i32> %num, %rem
  ret <4 x i32>  %rem.r
}



define <5 x i64> @test_ulong_rem(<5 x i64> %num, <5 x i64> %rem) {







  %rem.r = urem <5 x i64> %num, %rem
  ret <5 x i64>  %rem.r
}


define void @test_int_div(<3 x i32>* %dest, <3 x i32>* %old, i32 %n) {





entry:
  %cmp13 = icmp sgt i32 %n, 0
  br i1 %cmp13, label %bb.nph, label %for.end

bb.nph:  
  br label %for.body

for.body:
  %i.014 = phi i32 [ 0, %bb.nph ], [ %inc, %for.body ] 
  %arrayidx11 = getelementptr <3 x i32>, <3 x i32>* %dest, i32 %i.014
  %tmp4 = load <3 x i32>, <3 x i32>* %arrayidx11 
  %arrayidx7 = getelementptr inbounds <3 x i32>, <3 x i32>* %old, i32 %i.014
  %tmp8 = load <3 x i32>, <3 x i32>* %arrayidx7 
  %div = sdiv <3 x i32> %tmp4, %tmp8
  store <3 x i32> %div, <3 x i32>* %arrayidx11
  %inc = add nsw i32 %i.014, 1
  %exitcond = icmp eq i32 %inc, %n 
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          
  ret void
}
