





%struct.foo = type { [16 x i8] }
%struct.foo.0 = type { [4 x i8] }
%struct.pair = type { i32, i32 }
%struct.nest = type { %struct.pair, %struct.pair }
%struct.vec = type { <4 x i32> }
%class.A = type { [2 x i8] }
%struct.deep = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %union.anon.1 }
%union.anon.1 = type { [2 x i8] }
%struct.small = type { i8 }
%struct.small_char = type { i32, [5 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1




define void @test1a(i8* %a) {
entry:















  %a.addr = alloca i8*, align 8
  %buf = alloca [16 x i8], align 16
  store i8* %a, i8** %a.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1)
  ret void
}





define void @test1b(i8* %a) #0 {
entry:



















  %a.addr = alloca i8*, align 8
  %buf = alloca [16 x i8], align 16
  store i8* %a, i8** %a.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1)
  ret void
}





define void @test1c(i8* %a) #1 {
entry:















  %a.addr = alloca i8*, align 8
  %buf = alloca [16 x i8], align 16
  store i8* %a, i8** %a.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1)
  ret void
}





define void @test1d(i8* %a) #2 {
entry:















  %a.addr = alloca i8*, align 8
  %buf = alloca [16 x i8], align 16
  store i8* %a, i8** %a.addr, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1)
  ret void
}




define void @test2a(i8* %a) {
entry:















  %a.addr = alloca i8*, align 8
  %b = alloca %struct.foo, align 1
  store i8* %a, i8** %a.addr, align 8
  %buf = getelementptr inbounds %struct.foo, %struct.foo* %b, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %buf1 = getelementptr inbounds %struct.foo, %struct.foo* %b, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %buf1, i32 0, i32 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay2)
  ret void
}





define void @test2b(i8* %a) #0 {
entry:















  %a.addr = alloca i8*, align 8
  %b = alloca %struct.foo, align 1
  store i8* %a, i8** %a.addr, align 8
  %buf = getelementptr inbounds %struct.foo, %struct.foo* %b, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %buf1 = getelementptr inbounds %struct.foo, %struct.foo* %b, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %buf1, i32 0, i32 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay2)
  ret void
}





define void @test2c(i8* %a) #1 {
entry:















  %a.addr = alloca i8*, align 8
  %b = alloca %struct.foo, align 1
  store i8* %a, i8** %a.addr, align 8
  %buf = getelementptr inbounds %struct.foo, %struct.foo* %b, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %buf1 = getelementptr inbounds %struct.foo, %struct.foo* %b, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %buf1, i32 0, i32 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay2)
  ret void
}





define void @test2d(i8* %a) #2 {
entry:















  %a.addr = alloca i8*, align 8
  %b = alloca %struct.foo, align 1
  store i8* %a, i8** %a.addr, align 8
  %buf = getelementptr inbounds %struct.foo, %struct.foo* %b, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %buf1 = getelementptr inbounds %struct.foo, %struct.foo* %b, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %buf1, i32 0, i32 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay2)
  ret void
}




define void @test3a(i8* %a) {
entry:















  %a.addr = alloca i8*, align 8
  %buf = alloca [4 x i8], align 1
  store i8* %a, i8** %a.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1)
  ret void
}





define void @test3b(i8* %a) #0 {
entry:















  %a.addr = alloca i8*, align 8
  %buf = alloca [4 x i8], align 1
  store i8* %a, i8** %a.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1)
  ret void
}





define void @test3c(i8* %a) #1 {
entry:















  %a.addr = alloca i8*, align 8
  %buf = alloca [4 x i8], align 1
  store i8* %a, i8** %a.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1)
  ret void
}





define void @test3d(i8* %a) #2 {
entry:















  %a.addr = alloca i8*, align 8
  %buf = alloca [4 x i8], align 1
  store i8* %a, i8** %a.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay1)
  ret void
}




define void @test4a(i8* %a) {
entry:















  %a.addr = alloca i8*, align 8
  %b = alloca %struct.foo.0, align 1
  store i8* %a, i8** %a.addr, align 8
  %buf = getelementptr inbounds %struct.foo.0, %struct.foo.0* %b, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %buf1 = getelementptr inbounds %struct.foo.0, %struct.foo.0* %b, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %buf1, i32 0, i32 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay2)
  ret void
}





define void @test4b(i8* %a) #0 {
entry:















  %a.addr = alloca i8*, align 8
  %b = alloca %struct.foo.0, align 1
  store i8* %a, i8** %a.addr, align 8
  %buf = getelementptr inbounds %struct.foo.0, %struct.foo.0* %b, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %buf1 = getelementptr inbounds %struct.foo.0, %struct.foo.0* %b, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %buf1, i32 0, i32 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay2)
  ret void
}





define void @test4c(i8* %a) #1 {
entry:















  %a.addr = alloca i8*, align 8
  %b = alloca %struct.foo.0, align 1
  store i8* %a, i8** %a.addr, align 8
  %buf = getelementptr inbounds %struct.foo.0, %struct.foo.0* %b, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %buf1 = getelementptr inbounds %struct.foo.0, %struct.foo.0* %b, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %buf1, i32 0, i32 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay2)
  ret void
}





define void @test4d(i8* %a) #2 {
entry:















  %a.addr = alloca i8*, align 8
  %b = alloca %struct.foo.0, align 1
  store i8* %a, i8** %a.addr, align 8
  %buf = getelementptr inbounds %struct.foo.0, %struct.foo.0* %b, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i32 0, i32 0
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i8* @strcpy(i8* %arraydecay, i8* %0)
  %buf1 = getelementptr inbounds %struct.foo.0, %struct.foo.0* %b, i32 0, i32 0
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %buf1, i32 0, i32 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay2)
  ret void
}




define void @test5a(i8* %a) {
entry:















  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %0)
  ret void
}





define void @test5b(i8* %a) #0 {
entry:















  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %0)
  ret void
}





define void @test5c(i8* %a) #1 {
entry:















  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %0)
  ret void
}





define void @test5d(i8* %a) #2 {
entry:















  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %0)
  ret void
}




define void @test6a() {
entry:















  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %j = alloca i32*, align 8
  store i32 0, i32* %retval
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %a, align 4
  store i32* %a, i32** %j, align 8
  ret void
}





define void @test6b() #0 {
entry:















  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %j = alloca i32*, align 8
  store i32 0, i32* %retval
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %a, align 4
  store i32* %a, i32** %j, align 8
  ret void
}





define void @test6c() #1 {
entry:















  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %j = alloca i32*, align 8
  store i32 0, i32* %retval
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %a, align 4
  store i32* %a, i32** %j, align 8
  ret void
}





define void @test6d() #2 {
entry:















  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %j = alloca i32*, align 8
  store i32 0, i32* %retval
  %0 = load i32, i32* %a, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %a, align 4
  store i32* %a, i32** %j, align 8
  ret void
}




define void @test7a()  {
entry:















  %a = alloca i32, align 4
  %0 = ptrtoint i32* %a to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 %0)
  ret void
}





define void @test7b() #0 {
entry:















  %a = alloca i32, align 4
  %0 = ptrtoint i32* %a to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 %0)
  ret void
}





define void @test7c() #1 {
entry:















  %a = alloca i32, align 4
  %0 = ptrtoint i32* %a to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 %0)
  ret void
}





define void @test7d() #2 {
entry:















  %a = alloca i32, align 4
  %0 = ptrtoint i32* %a to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 %0)
  ret void
}




define void @test8a() {
entry:















  %b = alloca i32, align 4
  call void @funcall(i32* %b)
  ret void
}





define void @test8b() #0 {
entry:















  %b = alloca i32, align 4
  call void @funcall(i32* %b)
  ret void
}





define void @test8c() #1 {
entry:















  %b = alloca i32, align 4
  call void @funcall(i32* %b)
  ret void
}





define void @test8d() #2 {
entry:















  %b = alloca i32, align 4
  call void @funcall(i32* %b)
  ret void
}




define void @test9a() {
entry:















  %x = alloca double, align 8
  %call = call double @testi_aux()
  store double %call, double* %x, align 8
  %cmp2 = fcmp ogt double %call, 0.000000e+00
  %y.1 = select i1 %cmp2, double* %x, double* null
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %y.1)
  ret void
}





define void @test9b() #0 {
entry:















  %x = alloca double, align 8
  %call = call double @testi_aux()
  store double %call, double* %x, align 8
  %cmp2 = fcmp ogt double %call, 0.000000e+00
  %y.1 = select i1 %cmp2, double* %x, double* null
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %y.1)
  ret void
}





define void @test9c() #1 {
entry:















  %x = alloca double, align 8
  %call = call double @testi_aux()
  store double %call, double* %x, align 8
  %cmp2 = fcmp ogt double %call, 0.000000e+00
  %y.1 = select i1 %cmp2, double* %x, double* null
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %y.1)
  ret void
}





define void @test9d() #2 {
entry:















  %x = alloca double, align 8
  %call = call double @testi_aux()
  store double %call, double* %x, align 8
  %cmp2 = fcmp ogt double %call, 0.000000e+00
  %y.1 = select i1 %cmp2, double* %x, double* null
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %y.1)
  ret void
}




define void @test10a() {
entry:















  %x = alloca double, align 8
  %call = call double @testi_aux()
  store double %call, double* %x, align 8
  %cmp = fcmp ogt double %call, 3.140000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %call1 = call double @testi_aux()
  store double %call1, double* %x, align 8
  br label %if.end4

if.else:                                          
  %cmp2 = fcmp ogt double %call, 1.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         
  br label %if.end4

if.end4:                                          
  %y.0 = phi double* [ null, %if.then ], [ %x, %if.then3 ], [ null, %if.else ]
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double* %y.0)
  ret void
}





define void @test10b() #0 {
entry:















  %x = alloca double, align 8
  %call = call double @testi_aux()
  store double %call, double* %x, align 8
  %cmp = fcmp ogt double %call, 3.140000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %call1 = call double @testi_aux()
  store double %call1, double* %x, align 8
  br label %if.end4

if.else:                                          
  %cmp2 = fcmp ogt double %call, 1.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         
  br label %if.end4

if.end4:                                          
  %y.0 = phi double* [ null, %if.then ], [ %x, %if.then3 ], [ null, %if.else ]
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double* %y.0)
  ret void
}





define void @test10c() #1 {
entry:















  %x = alloca double, align 8
  %call = call double @testi_aux()
  store double %call, double* %x, align 8
  %cmp = fcmp ogt double %call, 3.140000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %call1 = call double @testi_aux()
  store double %call1, double* %x, align 8
  br label %if.end4

if.else:                                          
  %cmp2 = fcmp ogt double %call, 1.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         
  br label %if.end4

if.end4:                                          
  %y.0 = phi double* [ null, %if.then ], [ %x, %if.then3 ], [ null, %if.else ]
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double* %y.0)
  ret void
}





define void @test10d() #2 {
entry:















  %x = alloca double, align 8
  %call = call double @testi_aux()
  store double %call, double* %x, align 8
  %cmp = fcmp ogt double %call, 3.140000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          
  %call1 = call double @testi_aux()
  store double %call1, double* %x, align 8
  br label %if.end4

if.else:                                          
  %cmp2 = fcmp ogt double %call, 1.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         
  br label %if.end4

if.end4:                                          
  %y.0 = phi double* [ null, %if.then ], [ %x, %if.then3 ], [ null, %if.else ]
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double* %y.0)
  ret void
}




define void @test11a() {
entry:















  %c = alloca %struct.pair, align 4
  %b = alloca i32*, align 8
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 1
  store i32* %y, i32** %b, align 8
  %0 = load i32*, i32** %b, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %0)
  ret void
}





define void @test11b() #0 {
entry:















  %c = alloca %struct.pair, align 4
  %b = alloca i32*, align 8
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 1
  store i32* %y, i32** %b, align 8
  %0 = load i32*, i32** %b, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %0)
  ret void
}





define void @test11c() #1 {
entry:















  %c = alloca %struct.pair, align 4
  %b = alloca i32*, align 8
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 1
  store i32* %y, i32** %b, align 8
  %0 = load i32*, i32** %b, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %0)
  ret void
}





define void @test11d() #2 {
entry:















  %c = alloca %struct.pair, align 4
  %b = alloca i32*, align 8
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 1
  store i32* %y, i32** %b, align 8
  %0 = load i32*, i32** %b, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32* %0)
  ret void
}




define void @test12a() {
entry:















  %c = alloca %struct.pair, align 4
  %b = alloca i32*, align 8
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 1
  %0 = ptrtoint i32* %y to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 %0)
  ret void
}





define void @test12b() #0 {
entry:















  %c = alloca %struct.pair, align 4
  %b = alloca i32*, align 8
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 1
  %0 = ptrtoint i32* %y to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 %0)
  ret void
}




define void @test12c() #1 {
entry:















  %c = alloca %struct.pair, align 4
  %b = alloca i32*, align 8
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 1
  %0 = ptrtoint i32* %y to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 %0)
  ret void
}





define void @test12d() #2 {
entry:















  %c = alloca %struct.pair, align 4
  %b = alloca i32*, align 8
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 1
  %0 = ptrtoint i32* %y to i64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 %0)
  ret void
}




define void @test13a() {
entry:















  %c = alloca %struct.pair, align 4
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i64 0, i32 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %y)
  ret void
}





define void @test13b() #0 {
entry:















  %c = alloca %struct.pair, align 4
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i64 0, i32 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %y)
  ret void
}





define void @test13c() #1 {
entry:















  %c = alloca %struct.pair, align 4
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i64 0, i32 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %y)
  ret void
}





define void @test13d() #2 {
entry:















  %c = alloca %struct.pair, align 4
  %y = getelementptr inbounds %struct.pair, %struct.pair* %c, i64 0, i32 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %y)
  ret void
}




define void @test14a() {
entry:















  %a = alloca i32, align 4
  %add.ptr5 = getelementptr inbounds i32, i32* %a, i64 -12
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %add.ptr5)
  ret void
}





define void @test14b() #0 {
entry:















  %a = alloca i32, align 4
  %add.ptr5 = getelementptr inbounds i32, i32* %a, i64 -12
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %add.ptr5)
  ret void
}





define void @test14c() #1 {
entry:















  %a = alloca i32, align 4
  %add.ptr5 = getelementptr inbounds i32, i32* %a, i64 -12
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %add.ptr5)
  ret void
}





define void @test14d() #2 {
entry:















  %a = alloca i32, align 4
  %add.ptr5 = getelementptr inbounds i32, i32* %a, i64 -12
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %add.ptr5)
  ret void
}





define void @test15a() {
entry:















  %a = alloca i32, align 4
  %b = alloca float*, align 8
  store i32 0, i32* %a, align 4
  %0 = bitcast i32* %a to float*
  store float* %0, float** %b, align 8
  %1 = load float*, float** %b, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), float* %1)
  ret void
}






define void @test15b() #0 {
entry:















  %a = alloca i32, align 4
  %b = alloca float*, align 8
  store i32 0, i32* %a, align 4
  %0 = bitcast i32* %a to float*
  store float* %0, float** %b, align 8
  %1 = load float*, float** %b, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), float* %1)
  ret void
}






define void @test15c() #1 {
entry:















  %a = alloca i32, align 4
  %b = alloca float*, align 8
  store i32 0, i32* %a, align 4
  %0 = bitcast i32* %a to float*
  store float* %0, float** %b, align 8
  %1 = load float*, float** %b, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), float* %1)
  ret void
}






define void @test15d() #2 {
entry:















  %a = alloca i32, align 4
  %b = alloca float*, align 8
  store i32 0, i32* %a, align 4
  %0 = bitcast i32* %a to float*
  store float* %0, float** %b, align 8
  %1 = load float*, float** %b, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), float* %1)
  ret void
}





define void @test16a() {
entry:















  %a = alloca i32, align 4
  store i32 0, i32* %a, align 4
  %0 = bitcast i32* %a to float*
  call void @funfloat(float* %0)
  ret void
}






define void @test16b() #0 {
entry:















  %a = alloca i32, align 4
  store i32 0, i32* %a, align 4
  %0 = bitcast i32* %a to float*
  call void @funfloat(float* %0)
  ret void
}






define void @test16c() #1 {
entry:















  %a = alloca i32, align 4
  store i32 0, i32* %a, align 4
  %0 = bitcast i32* %a to float*
  call void @funfloat(float* %0)
  ret void
}






define void @test16d() #2 {
entry:















  %a = alloca i32, align 4
  store i32 0, i32* %a, align 4
  %0 = bitcast i32* %a to float*
  call void @funfloat(float* %0)
  ret void
}




define void @test17a() {
entry:















  %c = alloca %struct.vec, align 16
  %y = getelementptr inbounds %struct.vec, %struct.vec* %c, i64 0, i32 0
  %add.ptr = getelementptr inbounds <4 x i32>, <4 x i32>* %y, i64 -12
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), <4 x i32>* %add.ptr)
  ret void
}





define void @test17b() #0 {
entry:















  %c = alloca %struct.vec, align 16
  %y = getelementptr inbounds %struct.vec, %struct.vec* %c, i64 0, i32 0
  %add.ptr = getelementptr inbounds <4 x i32>, <4 x i32>* %y, i64 -12
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), <4 x i32>* %add.ptr)
  ret void
}





define void @test17c() #1 {
entry:















  %c = alloca %struct.vec, align 16
  %y = getelementptr inbounds %struct.vec, %struct.vec* %c, i64 0, i32 0
  %add.ptr = getelementptr inbounds <4 x i32>, <4 x i32>* %y, i64 -12
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), <4 x i32>* %add.ptr)
  ret void
}





define void @test17d() #2 {
entry:















  %c = alloca %struct.vec, align 16
  %y = getelementptr inbounds %struct.vec, %struct.vec* %c, i64 0, i32 0
  %add.ptr = getelementptr inbounds <4 x i32>, <4 x i32>* %y, i64 -12
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), <4 x i32>* %add.ptr)
  ret void
}




define i32 @test18a() personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:















  %a = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i32 0, i32* %a, align 4
  invoke void @_Z3exceptPi(i32* %a)
          to label %invoke.cont unwind label %lpad

invoke.cont:
  ret i32 0

lpad:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  ret i32 0
}





define i32 @test18b() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:















  %a = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i32 0, i32* %a, align 4
  invoke void @_Z3exceptPi(i32* %a)
          to label %invoke.cont unwind label %lpad

invoke.cont:
  ret i32 0

lpad:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  ret i32 0
}





define i32 @test18c() #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:















  %a = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i32 0, i32* %a, align 4
  invoke void @_Z3exceptPi(i32* %a)
          to label %invoke.cont unwind label %lpad

invoke.cont:
  ret i32 0

lpad:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  ret i32 0
}





define i32 @test18d() #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:















  %a = alloca i32, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i32 0, i32* %a, align 4
  invoke void @_Z3exceptPi(i32* %a)
          to label %invoke.cont unwind label %lpad

invoke.cont:
  ret i32 0

lpad:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  ret i32 0
}




define i32 @test19a() personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:















  %c = alloca %struct.pair, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %a = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 0
  store i32 0, i32* %a, align 4
  %a1 = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 0
  invoke void @_Z3exceptPi(i32* %a1)
          to label %invoke.cont unwind label %lpad

invoke.cont:
  ret i32 0

lpad:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  ret i32 0
}






define i32 @test19b() #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:















  %c = alloca %struct.pair, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %a = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 0
  store i32 0, i32* %a, align 4
  %a1 = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 0
  invoke void @_Z3exceptPi(i32* %a1)
          to label %invoke.cont unwind label %lpad

invoke.cont:
  ret i32 0

lpad:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  ret i32 0
}






define i32 @test19c() #1 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:















  %c = alloca %struct.pair, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %a = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 0
  store i32 0, i32* %a, align 4
  %a1 = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 0
  invoke void @_Z3exceptPi(i32* %a1)
          to label %invoke.cont unwind label %lpad

invoke.cont:
  ret i32 0

lpad:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  ret i32 0
}






define i32 @test19d() #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:



















  %c = alloca %struct.pair, align 4
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  %a = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 0
  store i32 0, i32* %a, align 4
  %a1 = getelementptr inbounds %struct.pair, %struct.pair* %c, i32 0, i32 0
  invoke void @_Z3exceptPi(i32* %a1)
          to label %invoke.cont unwind label %lpad

invoke.cont:
  ret i32 0

lpad:
  %0 = landingpad { i8*, i32 }
          catch i8* null
  ret i32 0
}




define void @test20a() {
entry:















  %a = alloca i32*, align 8
  %b = alloca i32**, align 8
  %call = call i32* @getp()
  store i32* %call, i32** %a, align 8
  store i32** %a, i32*** %b, align 8
  %0 = load i32**, i32*** %b, align 8
  call void @funcall2(i32** %0)
  ret void
}





define void @test20b() #0 {
entry:















  %a = alloca i32*, align 8
  %b = alloca i32**, align 8
  %call = call i32* @getp()
  store i32* %call, i32** %a, align 8
  store i32** %a, i32*** %b, align 8
  %0 = load i32**, i32*** %b, align 8
  call void @funcall2(i32** %0)
  ret void
}





define void @test20c() #1 {
entry:















  %a = alloca i32*, align 8
  %b = alloca i32**, align 8
  %call = call i32* @getp()
  store i32* %call, i32** %a, align 8
  store i32** %a, i32*** %b, align 8
  %0 = load i32**, i32*** %b, align 8
  call void @funcall2(i32** %0)
  ret void
}





define void @test20d() #2 {
entry:















  %a = alloca i32*, align 8
  %b = alloca i32**, align 8
  %call = call i32* @getp()
  store i32* %call, i32** %a, align 8
  store i32** %a, i32*** %b, align 8
  %0 = load i32**, i32*** %b, align 8
  call void @funcall2(i32** %0)
  ret void
}




define void @test21a() {
entry:















  %a = alloca i32*, align 8
  %b = alloca float**, align 8
  %call = call i32* @getp()
  store i32* %call, i32** %a, align 8
  %0 = bitcast i32** %a to float**
  store float** %0, float*** %b, align 8
  %1 = load float**, float*** %b, align 8
  call void @funfloat2(float** %1)
  ret void
}





define void @test21b() #0 {
entry:















  %a = alloca i32*, align 8
  %b = alloca float**, align 8
  %call = call i32* @getp()
  store i32* %call, i32** %a, align 8
  %0 = bitcast i32** %a to float**
  store float** %0, float*** %b, align 8
  %1 = load float**, float*** %b, align 8
  call void @funfloat2(float** %1)
  ret void
}





define void @test21c() #1 {
entry:















  %a = alloca i32*, align 8
  %b = alloca float**, align 8
  %call = call i32* @getp()
  store i32* %call, i32** %a, align 8
  %0 = bitcast i32** %a to float**
  store float** %0, float*** %b, align 8
  %1 = load float**, float*** %b, align 8
  call void @funfloat2(float** %1)
  ret void
}





define void @test21d() #2 {
entry:















  %a = alloca i32*, align 8
  %b = alloca float**, align 8
  %call = call i32* @getp()
  store i32* %call, i32** %a, align 8
  %0 = bitcast i32** %a to float**
  store float** %0, float*** %b, align 8
  %1 = load float**, float*** %b, align 8
  call void @funfloat2(float** %1)
  ret void
}




define signext i8 @test22a() {
entry:















  %a = alloca %class.A, align 1
  %array = getelementptr inbounds %class.A, %class.A* %a, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %array, i32 0, i64 0
  %0 = load i8, i8* %arrayidx, align 1
  ret i8 %0
}





define signext i8 @test22b() #0 {
entry:















  %a = alloca %class.A, align 1
  %array = getelementptr inbounds %class.A, %class.A* %a, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %array, i32 0, i64 0
  %0 = load i8, i8* %arrayidx, align 1
  ret i8 %0
}





define signext i8 @test22c() #1 {
entry:















  %a = alloca %class.A, align 1
  %array = getelementptr inbounds %class.A, %class.A* %a, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %array, i32 0, i64 0
  %0 = load i8, i8* %arrayidx, align 1
  ret i8 %0
}





define signext i8 @test22d() #2 {
entry:















  %a = alloca %class.A, align 1
  %array = getelementptr inbounds %class.A, %class.A* %a, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %array, i32 0, i64 0
  %0 = load i8, i8* %arrayidx, align 1
  ret i8 %0
}




define signext i8 @test23a() {
entry:















  %x = alloca %struct.deep, align 1
  %b = getelementptr inbounds %struct.deep, %struct.deep* %x, i32 0, i32 0
  %c = bitcast %union.anon* %b to %struct.anon*
  %d = getelementptr inbounds %struct.anon, %struct.anon* %c, i32 0, i32 0
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %d, i32 0, i32 0
  %array = bitcast %union.anon.1* %e to [2 x i8]*
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %array, i32 0, i64 0
  %0 = load i8, i8* %arrayidx, align 1
  ret i8 %0
}





define signext i8 @test23b() #0 {
entry:















  %x = alloca %struct.deep, align 1
  %b = getelementptr inbounds %struct.deep, %struct.deep* %x, i32 0, i32 0
  %c = bitcast %union.anon* %b to %struct.anon*
  %d = getelementptr inbounds %struct.anon, %struct.anon* %c, i32 0, i32 0
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %d, i32 0, i32 0
  %array = bitcast %union.anon.1* %e to [2 x i8]*
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %array, i32 0, i64 0
  %0 = load i8, i8* %arrayidx, align 1
  ret i8 %0
}





define signext i8 @test23c() #1 {
entry:















  %x = alloca %struct.deep, align 1
  %b = getelementptr inbounds %struct.deep, %struct.deep* %x, i32 0, i32 0
  %c = bitcast %union.anon* %b to %struct.anon*
  %d = getelementptr inbounds %struct.anon, %struct.anon* %c, i32 0, i32 0
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %d, i32 0, i32 0
  %array = bitcast %union.anon.1* %e to [2 x i8]*
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %array, i32 0, i64 0
  %0 = load i8, i8* %arrayidx, align 1
  ret i8 %0
}





define signext i8 @test23d() #2 {
entry:















  %x = alloca %struct.deep, align 1
  %b = getelementptr inbounds %struct.deep, %struct.deep* %x, i32 0, i32 0
  %c = bitcast %union.anon* %b to %struct.anon*
  %d = getelementptr inbounds %struct.anon, %struct.anon* %c, i32 0, i32 0
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %d, i32 0, i32 0
  %array = bitcast %union.anon.1* %e to [2 x i8]*
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* %array, i32 0, i64 0
  %0 = load i8, i8* %arrayidx, align 1
  ret i8 %0
}




define void @test24a(i32 %n) {
entry:















  %n.addr = alloca i32, align 4
  %a = alloca i32*, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = alloca i8, i64 %conv
  %2 = bitcast i8* %1 to i32*
  store i32* %2, i32** %a, align 8
  ret void
}





define void @test24b(i32 %n) #0 {
entry:















  %n.addr = alloca i32, align 4
  %a = alloca i32*, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = alloca i8, i64 %conv
  %2 = bitcast i8* %1 to i32*
  store i32* %2, i32** %a, align 8
  ret void
}





define void @test24c(i32 %n) #1 {
entry:















  %n.addr = alloca i32, align 4
  %a = alloca i32*, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = alloca i8, i64 %conv
  %2 = bitcast i8* %1 to i32*
  store i32* %2, i32** %a, align 8
  ret void
}





define void @test24d(i32 %n) #2 {
entry:















  %n.addr = alloca i32, align 4
  %a = alloca i32*, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = alloca i8, i64 %conv
  %2 = bitcast i8* %1 to i32*
  store i32* %2, i32** %a, align 8
  ret void
}




define i32 @test25a() {
entry:















  %a = alloca [4 x i32], align 16
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i32 0, i64 0
  %0 = load i32, i32* %arrayidx, align 4
  ret i32 %0
}





define i32 @test25b() #0 {
entry:















  %a = alloca [4 x i32], align 16
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i32 0, i64 0
  %0 = load i32, i32* %arrayidx, align 4
  ret i32 %0
}





define i32 @test25c() #1 {
entry:















  %a = alloca [4 x i32], align 16
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i32 0, i64 0
  %0 = load i32, i32* %arrayidx, align 4
  ret i32 %0
}





define i32 @test25d() #2 {
entry:















  %a = alloca [4 x i32], align 16
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i32 0, i64 0
  %0 = load i32, i32* %arrayidx, align 4
  ret i32 %0
}







define void @test26() #1 {
entry:















  %c = alloca %struct.nest, align 4
  %b = getelementptr inbounds %struct.nest, %struct.nest* %c, i32 0, i32 1
  %_a = getelementptr inbounds %struct.pair, %struct.pair* %b, i32 0, i32 0
  %0 = load i32, i32* %_a, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %0)
  ret void
}








define i32 @test27(i32 %arg) #1 {
bb:















  %tmp = alloca %struct.small*, align 8
  %tmp1 = call i32 (...) @dummy(%struct.small** %tmp)
  %tmp2 = load %struct.small*, %struct.small** %tmp, align 8
  %tmp3 = ptrtoint %struct.small* %tmp2 to i64
  %tmp4 = trunc i64 %tmp3 to i32
  %tmp5 = icmp sgt i32 %tmp4, 0
  br i1 %tmp5, label %bb6, label %bb21

bb6:                                              
  %tmp7 = phi %struct.small* [ %tmp19, %bb17 ], [ %tmp2, %bb ]
  %tmp8 = phi i64 [ %tmp20, %bb17 ], [ 1, %bb ]
  %tmp9 = phi i32 [ %tmp14, %bb17 ], [ %tmp1, %bb ]
  %tmp10 = getelementptr inbounds %struct.small, %struct.small* %tmp7, i64 0, i32 0
  %tmp11 = load i8, i8* %tmp10, align 1
  %tmp12 = icmp eq i8 %tmp11, 1
  %tmp13 = add nsw i32 %tmp9, 8
  %tmp14 = select i1 %tmp12, i32 %tmp13, i32 %tmp9
  %tmp15 = trunc i64 %tmp8 to i32
  %tmp16 = icmp eq i32 %tmp15, %tmp4
  br i1 %tmp16, label %bb21, label %bb17

bb17:                                             
  %tmp18 = getelementptr inbounds %struct.small*, %struct.small** %tmp, i64 %tmp8
  %tmp19 = load %struct.small*, %struct.small** %tmp18, align 8
  %tmp20 = add i64 %tmp8, 1
  br label %bb6

bb21:                                             
  %tmp22 = phi i32 [ %tmp1, %bb ], [ %tmp14, %bb6 ]
  %tmp23 = call i32 (...) @dummy(i32 %tmp22)
  ret i32 undef
}




define i32 @test28a() #3 {
entry:















  %test = alloca [32 x i8], align 16
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %test, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  ret i32 %call
}




define i32 @test28b() #3 {
entry:















  %test = alloca [33 x i8], align 16
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %test, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  ret i32 %call
}




define i32 @test29a() #4 {
entry:















  %test = alloca [4 x i8], align 1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %test, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  ret i32 %call
}




define i32 @test29b() #4 {
entry:















  %test = alloca [5 x i8], align 1
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %test, i32 0, i32 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %arraydecay)
  ret i32 %call
}





define i32 @test30a() #5 {
entry:















  %test = alloca %struct.small_char, align 4
  %test.coerce = alloca { i64, i8 }
  %0 = bitcast { i64, i8 }* %test.coerce to i8*
  %1 = bitcast %struct.small_char* %test to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 0, i1 false)
  %2 = getelementptr { i64, i8 }, { i64, i8 }* %test.coerce, i32 0, i32 0
  %3 = load i64, i64* %2, align 1
  %4 = getelementptr { i64, i8 }, { i64, i8 }* %test.coerce, i32 0, i32 1
  %5 = load i8, i8* %4, align 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 %3, i8 %5)
  ret i32 %call
}





define i32 @test30b() #4 {
entry:















  %test = alloca %struct.small_char, align 4
  %test.coerce = alloca { i64, i8 }
  %0 = bitcast { i64, i8 }* %test.coerce to i8*
  %1 = bitcast %struct.small_char* %test to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 12, i32 0, i1 false)
  %2 = getelementptr { i64, i8 }, { i64, i8 }* %test.coerce, i32 0, i32 0
  %3 = load i64, i64* %2, align 1
  %4 = getelementptr { i64, i8 }, { i64, i8 }* %test.coerce, i32 0, i32 1
  %5 = load i8, i8* %4, align 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 %3, i8 %5)
  ret i32 %call
}





define i32 @test31a() #5 {
entry:















  %test = alloca i8*, align 8
  %0 = alloca i8, i64 4
  store i8* %0, i8** %test, align 8
  %1 = load i8*, i8** %test, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %1)
  ret i32 %call
}




define i32 @test31b() #4 {
entry:















  %test = alloca i8*, align 8
  %0 = alloca i8, i64 5
  store i8* %0, i8** %test, align 8
  %1 = load i8*, i8** %test, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %1)
  ret i32 %call
}

declare double @testi_aux()
declare i8* @strcpy(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @funcall(i32*)
declare void @funcall2(i32**)
declare void @funfloat(float*)
declare void @funfloat2(float**)
declare void @_Z3exceptPi(i32*)
declare i32 @__gxx_personality_v0(...)
declare i32* @getp()
declare i32 @dummy(...)
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1)

attributes #0 = { ssp }
attributes #1 = { sspstrong }
attributes #2 = { sspreq }
attributes #3 = { ssp "stack-protector-buffer-size"="33" }
attributes #4 = { ssp "stack-protector-buffer-size"="5" }
attributes #5 = { ssp "stack-protector-buffer-size"="6" }
