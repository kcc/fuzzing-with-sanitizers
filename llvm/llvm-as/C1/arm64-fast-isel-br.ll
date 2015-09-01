

define void @branch1() nounwind uwtable ssp {
  %x = alloca i32, align 4
  store i32 0, i32* %x, align 4
  %1 = load i32, i32* %x, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4


  br label %4


  ret void
}

define void @branch2() nounwind uwtable ssp {
  %1 = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, i32* %1
  store i32 1, i32* %y, align 4
  store i32 1, i32* %x, align 4
  store i32 0, i32* %z, align 4
  %2 = load i32, i32* %x, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5


  store i32 0, i32* %1
  br label %14


  %6 = load i32, i32* %y, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13


  %9 = load i32, i32* %z, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12


  store i32 1, i32* %1
  br label %14


  store i32 0, i32* %1
  br label %14


  br label %14


  %15 = load i32, i32* %1
  ret void
}

define void @true_() nounwind uwtable ssp {


  br i1 true, label %1, label %2



  br label %2


  ret void
}

define void @false_() nounwind uwtable ssp {


  br i1 false, label %1, label %2


  br label %2



  ret void
}

define zeroext i8 @trunc_(i8 zeroext %a, i16 zeroext %b, i32 %c, i64 %d) {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i16, align 2
  %c.addr = alloca i32, align 4
  %d.addr = alloca i64, align 8
  store i8 %a, i8* %a.addr, align 1
  store i16 %b, i16* %b.addr, align 2
  store i32 %c, i32* %c.addr, align 4
  store i64 %d, i64* %d.addr, align 8
  %0 = load i16, i16* %b.addr, align 2



  %conv = trunc i16 %0 to i1
  br i1 %conv, label %if.then, label %if.end

if.then:                                          
  call void @foo1()
  br label %if.end

if.end:                                           
  %1 = load i32, i32* %c.addr, align 4



  %conv1 = trunc i32 %1 to i1
  br i1 %conv1, label %if.then3, label %if.end4

if.then3:                                         
  call void @foo1()
  br label %if.end4

if.end4:                                          
  %2 = load i64, i64* %d.addr, align 8


  %conv5 = trunc i64 %2 to i1
  br i1 %conv5, label %if.then7, label %if.end8

if.then7:                                         
  call void @foo1()
  br label %if.end8

if.end8:                                          
  %3 = load i8, i8* %a.addr, align 1
  ret i8 %3
}

declare void @foo1()


define i32 @trunc64(i64 %foo) nounwind {






  %a = and i64 %foo, 1
  %b = trunc i64 %a to i1
  br i1 %b, label %if.then, label %if.else

if.then:
  ret i32 1

if.else:
  ret i32 0
}
