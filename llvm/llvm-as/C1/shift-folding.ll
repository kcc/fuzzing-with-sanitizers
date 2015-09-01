

define i32* @test1(i32* %P, i32 %X) {





entry:
  %Y = lshr i32 %X, 2
  %gep.upgrd.1 = zext i32 %Y to i64
  %P2 = getelementptr i32, i32* %P, i64 %gep.upgrd.1
  ret i32* %P2
}

define i32* @test2(i32* %P, i32 %X) {





entry:
  %Y = shl i32 %X, 2
  %gep.upgrd.2 = zext i32 %Y to i64
  %P2 = getelementptr i32, i32* %P, i64 %gep.upgrd.2
  ret i32* %P2
}

define i32* @test3(i32* %P, i32 %X) {





entry:
  %Y = ashr i32 %X, 2
  %P2 = getelementptr i32, i32* %P, i32 %Y
  ret i32* %P2
}

define fastcc i32 @test4(i32* %d) {




entry:
  %tmp4 = load i32, i32* %d
  %tmp512 = lshr i32 %tmp4, 24
  ret i32 %tmp512
}

define i64 @test5(i16 %i, i32* %arr) {








entry:
  %i.zext = zext i16 %i to i32
  %index = lshr i32 %i.zext, 11
  %index.zext = zext i32 %index to i64
  %val.ptr = getelementptr inbounds i32, i32* %arr, i64 %index.zext
  %val = load i32, i32* %val.ptr
  %val.zext = zext i32 %val to i64
  %sum = add i64 %val.zext, %index.zext
  ret i64 %sum
}
