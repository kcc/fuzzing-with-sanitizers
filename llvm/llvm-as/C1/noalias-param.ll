

declare i32* @captures(i32* %cap) nounwind readonly

define void @no(i32* noalias %a, i32* %b) nounwind {
entry:
  store i32 1, i32* %a 
  %cap = call i32* @captures(i32* %a) nounwind readonly
  %l = load i32, i32* %b
  ret void
}



define void @yes(i32* %c, i32* %d) nounwind {
entry:
  store i32 1, i32* %c 
  %cap = call i32* @captures(i32* %c) nounwind readonly
  %l = load i32, i32* %d
  ret void
}


