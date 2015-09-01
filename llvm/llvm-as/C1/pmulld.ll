


define <4 x i32> @test1(<4 x i32> %A, <4 x i32> %B) nounwind {






  %C = mul <4 x i32> %A, %B
  ret <4 x i32> %C
}

define <4 x i32> @test1a(<4 x i32> %A, <4 x i32> *%Bp) nounwind {







  %B = load <4 x i32>, <4 x i32>* %Bp
  %C = mul <4 x i32> %A, %B
  ret <4 x i32> %C
}
