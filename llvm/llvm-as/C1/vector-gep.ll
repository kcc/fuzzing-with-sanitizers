



define <4 x i32*> @AGEP0(i32* %ptr) nounwind {
entry:




  %vecinit.i = insertelement <4 x i32*> undef, i32* %ptr, i32 0
  %vecinit2.i = insertelement <4 x i32*> %vecinit.i, i32* %ptr, i32 1
  %vecinit4.i = insertelement <4 x i32*> %vecinit2.i, i32* %ptr, i32 2
  %vecinit6.i = insertelement <4 x i32*> %vecinit4.i, i32* %ptr, i32 3
  %A2 = getelementptr i32, <4 x i32*> %vecinit6.i, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %A3 = getelementptr i32, <4 x i32*> %A2, <4 x i32> <i32 10, i32 14, i32 19, i32 233>
  ret <4 x i32*> %A3
}


define i32 @AGEP1(<4 x i32*> %param) nounwind {
entry:




  %A2 = getelementptr i32, <4 x i32*> %param, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %k = extractelement <4 x i32*> %A2, i32 3
  %v = load i32, i32* %k
  ret i32 %v

}


define i32 @AGEP2(<4 x i32*> %param, <4 x i32> %off) nounwind {
entry:



  %A2 = getelementptr i32, <4 x i32*> %param, <4 x i32> %off
  %k = extractelement <4 x i32*> %A2, i32 3
  %v = load i32, i32* %k
  ret i32 %v

}


define <4 x i32*> @AGEP3(<4 x i32*> %param, <4 x i32> %off) nounwind {
entry:



  %A2 = getelementptr i32, <4 x i32*> %param, <4 x i32> %off
  %v = alloca i32
  %k = insertelement <4 x i32*> %A2, i32* %v, i32 3
  ret <4 x i32*> %k

}


define <4 x i16*> @AGEP4(<4 x i16*> %param, <4 x i32> %off) nounwind {
entry:





  %A = getelementptr i16, <4 x i16*> %param, <4 x i32> %off
  ret <4 x i16*> %A

}


define <4 x i8*> @AGEP5(<4 x i8*> %param, <4 x i8> %off) nounwind {
entry:


  %A = getelementptr i8, <4 x i8*> %param, <4 x i8> %off
  ret <4 x i8*> %A

}




define <4 x i8*> @AGEP6(<4 x i8*> %param, <4 x i32> %off) nounwind {
entry:


  %A = getelementptr i8, <4 x i8*> %param, <4 x i32> %off
  ret <4 x i8*> %A

}


define <4 x i8*> @AGEP7(<4 x i8*> %param, i32 %off) nounwind {
entry:


  %A = getelementptr i8, <4 x i8*> %param, i32 %off
  ret <4 x i8*> %A

}


define <4 x i16*> @AGEP8(i16* %param, <4 x i32> %off) nounwind {
entry:





  %A = getelementptr i16, i16* %param, <4 x i32> %off
  ret <4 x i16*> %A

}
