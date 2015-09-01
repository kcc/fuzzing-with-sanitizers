

define void @foo(i32* noalias sret %agg.result) nounwind {
entry:





  store i32 42, i32* %agg.result
  ret void
}

define void @bar(i32 signext %v, i32* noalias sret %agg.result) nounwind {
entry:





  store i32 %v, i32* %agg.result
  ret void
}
