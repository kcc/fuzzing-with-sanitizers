




define <1 x i128> @test_add(<1 x i128> %x, <1 x i128> %y) nounwind {
       %result = add <1 x i128> %x, %y
       ret <1 x i128> %result


}

define <1 x i128> @increment_by_one(<1 x i128> %x) nounwind {
       %result = add <1 x i128> %x, <i128 1>
       ret <1 x i128> %result


}

define <1 x i128> @increment_by_val(<1 x i128> %x, i128 %val) nounwind {
       %tmpvec = insertelement <1 x i128> <i128 0>, i128 %val, i32 0
       %tmpvec2 = insertelement <1 x i128> %tmpvec, i128 %val, i32 1
       %result = add <1 x i128> %x, %tmpvec2
       ret <1 x i128> %result


}

define <1 x i128> @test_sub(<1 x i128> %x, <1 x i128> %y) nounwind {
       %result = sub <1 x i128> %x, %y
       ret <1 x i128> %result


}

define <1 x i128> @decrement_by_one(<1 x i128> %x) nounwind {
       %result = sub <1 x i128> %x, <i128 1>
       ret <1 x i128> %result


}

define <1 x i128> @decrement_by_val(<1 x i128> %x, i128 %val) nounwind {
       %tmpvec = insertelement <1 x i128> <i128 0>, i128 %val, i32 0
       %tmpvec2 = insertelement <1 x i128> %tmpvec, i128 %val, i32 1
       %result = sub <1 x i128> %x, %tmpvec2
       ret <1 x i128> %result


}

declare <1 x i128> @llvm.ppc.altivec.vaddeuqm(<1 x i128> %x, 
                                              <1 x i128> %y, 
                                              <1 x i128> %z) nounwind readnone
declare <1 x i128> @llvm.ppc.altivec.vaddcuq(<1 x i128> %x, 
                                             <1 x i128> %y) nounwind readnone
declare <1 x i128> @llvm.ppc.altivec.vaddecuq(<1 x i128> %x, 
                                              <1 x i128> %y, 
                                              <1 x i128> %z) nounwind readnone
declare <1 x i128> @llvm.ppc.altivec.vsubeuqm(<1 x i128> %x, 
                                              <1 x i128> %y, 
                                              <1 x i128> %z) nounwind readnone
declare <1 x i128> @llvm.ppc.altivec.vsubcuq(<1 x i128> %x, 
                                             <1 x i128> %y) nounwind readnone
declare <1 x i128> @llvm.ppc.altivec.vsubecuq(<1 x i128> %x, 
                                              <1 x i128> %y, 
                                              <1 x i128> %z) nounwind readnone

define <1 x i128> @test_vaddeuqm(<1 x i128> %x, 
       	    	                 <1 x i128> %y, 
                                 <1 x i128> %z) nounwind {
  %tmp = tail call <1 x i128> @llvm.ppc.altivec.vaddeuqm(<1 x i128> %x,
                                                         <1 x i128> %y,
                                                         <1 x i128> %z)
  ret <1 x i128> %tmp


}

define <1 x i128> @test_vaddcuq(<1 x i128> %x, 
       	    	                <1 x i128> %y) nounwind {
  %tmp = tail call <1 x i128> @llvm.ppc.altivec.vaddcuq(<1 x i128> %x,
                                                        <1 x i128> %y)
  ret <1 x i128> %tmp


}

define <1 x i128> @test_vaddecuq(<1 x i128> %x, 
       	    	                 <1 x i128> %y, 
                                 <1 x i128> %z) nounwind {
  %tmp = tail call <1 x i128> @llvm.ppc.altivec.vaddecuq(<1 x i128> %x,
                                                         <1 x i128> %y,
                                                         <1 x i128> %z)
  ret <1 x i128> %tmp


}

define <1 x i128> @test_vsubeuqm(<1 x i128> %x, 
       	    	                 <1 x i128> %y, 
                                 <1 x i128> %z) nounwind {
  %tmp = tail call <1 x i128> @llvm.ppc.altivec.vsubeuqm(<1 x i128> %x,
                                                         <1 x i128> %y,
                                                         <1 x i128> %z)
  ret <1 x i128> %tmp


}

define <1 x i128> @test_vsubcuq(<1 x i128> %x, 
       	    	                <1 x i128> %y) nounwind {
  %tmp = tail call <1 x i128> @llvm.ppc.altivec.vsubcuq(<1 x i128> %x,
                                                        <1 x i128> %y)
  ret <1 x i128> %tmp


}

define <1 x i128> @test_vsubecuq(<1 x i128> %x, 
       	    	                 <1 x i128> %y, 
                                 <1 x i128> %z) nounwind {
  %tmp = tail call <1 x i128> @llvm.ppc.altivec.vsubecuq(<1 x i128> %x,
                                                         <1 x i128> %y,
                                                         <1 x i128> %z)
  ret <1 x i128> %tmp


}

