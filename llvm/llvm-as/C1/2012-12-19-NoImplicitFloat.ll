



%struct1 = type { i32*, i32* }

define void @test() nounwind noimplicitfloat {
entry:


  %0 = load %struct1*, %struct1** undef, align 8
  %1 = getelementptr inbounds %struct1, %struct1* %0, i64 0, i32 0
  store i32* null, i32** %1, align 8
  %2 = getelementptr inbounds %struct1, %struct1* %0, i64 0, i32 1
  store i32* null, i32** %2, align 8
  ret void
}
