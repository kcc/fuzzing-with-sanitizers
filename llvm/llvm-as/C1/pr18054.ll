

define void @foo(<16 x i32>* %p, <16 x i1> %x) {
  %ret = sext <16 x i1> %x to <16 x i32>
  store <16 x i32> %ret, <16 x i32>* %p
  ret void



}
