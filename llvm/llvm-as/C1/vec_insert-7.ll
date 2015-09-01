



define x86_mmx @mmx_movzl(x86_mmx %x) nounwind  {
entry:



        %tmp = bitcast x86_mmx %x to <2 x i32> 
	%tmp3 = insertelement <2 x i32> %tmp, i32 32, i32 0		
	%tmp8 = insertelement <2 x i32> %tmp3, i32 0, i32 1		
        %tmp9 = bitcast <2 x i32> %tmp8 to x86_mmx
	ret x86_mmx %tmp9
}
