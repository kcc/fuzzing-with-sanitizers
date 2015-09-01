





define <4 x i32> @foo(<4 x i32> %v1, <4 x i32> %v2, <4 x i32> %v3, <4 x i32> %v4,
                      <4 x i32> %v5, <4 x i32> %v6, <4 x i32> %v7, <4 x i32> %v8,
                      <4 x i32> %v9, <4 x i32> %v10) {




  %y = sub <4 x i32> %v2, %v10
  ret <4 x i32> %y
}



define <4 x i8> @bar(<4 x i8> %v1, <4 x i8> %v2, <4 x i8> %v3, <4 x i8> %v4,
                     <4 x i8> %v5, <4 x i8> %v6, <4 x i8> %v7, <4 x i8> %v8,
                     <4 x i8> %v9, <4 x i8> %v10) {




  %y = sub <4 x i8> %v2, %v10
  ret <4 x i8> %y
}

