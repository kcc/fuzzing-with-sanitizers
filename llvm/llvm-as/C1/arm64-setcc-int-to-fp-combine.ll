

define <4 x float> @foo(<4 x float> %val, <4 x float> %test) nounwind {





  %cmp = fcmp oeq <4 x float> %val, %test
  %ext = zext <4 x i1> %cmp to <4 x i32>
  %result = sitofp <4 x i32> %ext to <4 x float>
  ret <4 x float> %result
}



define void @foo1(<4 x float> %val, <4 x float> %test, <4 x double>* %p) nounwind {




  %cmp = fcmp oeq <4 x float> %val, %test
  %ext = zext <4 x i1> %cmp to <4 x i32>
  %result = sitofp <4 x i32> %ext to <4 x double>
  store <4 x double> %result, <4 x double>* %p
  ret void
}



define <4 x float> @foo2(<4 x float> %val, <4 x float> %test) nounwind {










  %cmp = fcmp oeq <4 x float> %val, %test
  %ext = zext <4 x i1> %cmp to <4 x i32>
  %and = and <4 x i32> %ext, <i32 255, i32 256, i32 257, i32 258>
  %result = sitofp <4 x i32> %and to <4 x float>
  ret <4 x float> %result
}
