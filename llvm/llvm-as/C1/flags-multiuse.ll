





declare void @bar()

@var = global i32 0

define i32 @test_multiflag(i32 %n, i32 %m, i32 %o) {


  %test = icmp ne i32 %n, %m


  %val = zext i1 %test to i32


  store i32 %val, i32* @var

  call void @bar()


  
  
  br i1 %test, label %iftrue, label %iffalse



iftrue:
  ret i32 42
iffalse:
  ret i32 0
}
