

%struct.s = type { [4 x i32] }
@v = constant %struct.s zeroinitializer

declare void @f(%struct.s* %p)


define void @t(i32 %a, %struct.s* byval %s) nounwind {
entry:









  call void @f(%struct.s* %s)
  ret void
}


define void @caller() {


  call void @t(i32 0, %struct.s* @v)
  ret void
}
