







declare void @bar(<4 x i8>, <4 x i8>, ...)

define void @foo() {















  call void (<4 x i8>, <4 x i8>, ...) @bar
              (<4 x i8> <i8 1, i8 1, i8 1, i8 1>,
               <4 x i8> <i8 2, i8 2, i8 2, i8 2>,
               <4 x i8> <i8 3, i8 3, i8 3, i8 3>,
               <4 x i8> <i8 4, i8 4, i8 4, i8 4>)
  ret void
}

