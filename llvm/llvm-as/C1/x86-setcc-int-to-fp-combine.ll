

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


define void @foo2(<4 x float>* noalias %result) nounwind {








  %val = uitofp <4 x i32> <i32 4, i32 5, i32 6, i32 7> to <4 x float>
  store <4 x float> %val, <4 x float>* %result
  ret void
}



define <4 x float> @foo3(<4 x float> %val, <4 x float> %test) nounwind {








  %cmp = fcmp oeq <4 x float> %val, %test
  %ext = zext <4 x i1> %cmp to <4 x i32>
  %and = and <4 x i32> %ext, <i32 255, i32 256, i32 257, i32 258>
  %result = sitofp <4 x i32> %and to <4 x float>
  ret <4 x float> %result
}


define void @foo4(<4 x float>* noalias %result) nounwind {








  %val = uitofp <4 x i8> <i8 1, i8 127, i8 -128, i8 -1> to <4 x float>
  store <4 x float> %val, <4 x float>* %result
  ret void
}
