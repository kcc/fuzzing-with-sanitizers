









define i32 @test(i32* %addr.i) {





  store i32 5, i32* %addr.i, align 4
  fence release
  %a = load i32, i32* %addr.i, align 4
  ret i32 %a
}


define i32 @test2(i32* noalias %addr.i, i32* noalias %otheraddr) {





  %a = load i32, i32* %addr.i, align 4
  fence release
  %a2 = load i32, i32* %addr.i, align 4
  %res = sub i32 %a, %a2
  ret i32 %a
}








define i32 @test3(i32* noalias %addr.i, i32* noalias %otheraddr) {






  %a = load i32, i32* %addr.i, align 4
  fence acquire
  %a2 = load i32, i32* %addr.i, align 4
  %res = sub i32 %a, %a2
  ret i32 %res
}





define void @test4(i32* %addr.i) {





  store i32 5, i32* %addr.i, align 4
  fence release
  store i32 5, i32* %addr.i, align 4
  ret void
}



define void @test5(i32* %addr.i) {





  store i32 5, i32* %addr.i, align 4
  fence acquire
  store i32 5, i32* %addr.i, align 4
  ret void
}
