

declare i8* @objc_initWeak(i8**, i8*)







define i8* @test0(i8** %p) {
  %t = call i8* @objc_initWeak(i8** %p, i8* null)
  ret i8* %t
}
