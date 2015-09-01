






declare void @bar(<1 x i8>, <2 x i8>, <4 x i8>, <8 x i8>,
                  <1 x i8>, <2 x i8>, <4 x i8>, <8 x i8>,
                  <1 x i8>, <2 x i8>, <4 x i8>, <8 x i8>)

define void @foo() {
































  call void @bar (<1 x i8> <i8 1>,
                  <2 x i8> <i8 2, i8 2>,
                  <4 x i8> <i8 3, i8 3, i8 3, i8 3>,
                  <8 x i8> <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>,
                  <1 x i8> <i8 5>,
                  <2 x i8> <i8 6, i8 6>,
                  <4 x i8> <i8 7, i8 7, i8 7, i8 7>,
                  <8 x i8> <i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8, i8 8>,
                  <1 x i8> <i8 9>,
                  <2 x i8> <i8 10, i8 10>,
                  <4 x i8> <i8 11, i8 11, i8 11, i8 11>,
                  <8 x i8> <i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12, i8 12>)
  ret void
}
