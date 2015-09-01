

@a = external global <16 x i8>
@b = external global <16 x i8>
@c = external global <16 x i8>

define void @foo() nounwind ssp {


entry:
    %tmp0 = load <16 x i8>, <16 x i8>* @a, align 16
  %tmp180.i = extractelement <16 x i8> %tmp0, i32 0 
  %tmp181.i = insertelement <16 x i8> <i8 0, i8 0, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, i8 %tmp180.i, i32 2 
  %tmp182.i = extractelement <16 x i8> %tmp0, i32 1 
  %tmp183.i = insertelement <16 x i8> %tmp181.i, i8 %tmp182.i, i32 3 
  %tmp184.i = insertelement <16 x i8> %tmp183.i, i8 0, i32 4 
  %tmp185.i = insertelement <16 x i8> %tmp184.i, i8 0, i32 5 
  %tmp186.i = extractelement <16 x i8> %tmp0, i32 4 
  %tmp187.i = insertelement <16 x i8> %tmp185.i, i8 %tmp186.i, i32 6 
  %tmp188.i = extractelement <16 x i8> %tmp0, i32 5 
  %tmp189.i = insertelement <16 x i8> %tmp187.i, i8 %tmp188.i, i32 7 
  %tmp190.i = insertelement <16 x i8> %tmp189.i, i8 0, i32 8 
  %tmp191.i = insertelement <16 x i8> %tmp190.i, i8 0, i32 9 
  %tmp192.i = extractelement <16 x i8> %tmp0, i32 8 
  %tmp193.i = insertelement <16 x i8> %tmp191.i, i8 %tmp192.i, i32 10 
  %tmp194.i = extractelement <16 x i8> %tmp0, i32 9 
  %tmp195.i = insertelement <16 x i8> %tmp193.i, i8 %tmp194.i, i32 11 
  %tmp196.i = insertelement <16 x i8> %tmp195.i, i8 0, i32 12 
  %tmp197.i = insertelement <16 x i8> %tmp196.i, i8 0, i32 13 
%tmp201 = shufflevector <16 x i8> %tmp197.i, <16 x i8> %tmp0, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 28, i32 29>
    store <16 x i8> %tmp201, <16 x i8>* @c, align 16
    br label %return

return:		
	ret void

}
