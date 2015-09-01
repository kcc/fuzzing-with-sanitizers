










declare void @bar(i8*)

define i64 @test_chains() {


  %locvar = alloca i8

  call void @bar(i8* %locvar)


  %inc.1 = load i8, i8* %locvar
  %inc.2 = zext i8 %inc.1 to i64
  %inc.3 = add i64 %inc.2, 1
  %inc.4 = trunc i64 %inc.3 to i8
  store i8 %inc.4, i8* %locvar






  %ret.1 = load i8, i8* %locvar
  %ret.2 = zext i8 %ret.1 to i64
  ret i64 %ret.2

}
