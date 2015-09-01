








define void @foo(i32* nocapture %out, i32 %in) nounwind {
entry:
  store i32 %in, i32* %out, align 4
  ret void
}








define void @bar(i32* nocapture %pOut, i32* nocapture %pIn) nounwind {
entry:
  %0 = load i32, i32* %pIn, align 4
  store i32 %0, i32* %pOut, align 4
  ret void
}

