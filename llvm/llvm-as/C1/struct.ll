


%struct.foo = type { [16 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1



define void @foo(i8* %a) nounwind uwtable safestack {
entry:
  

  

  

  
  %a.addr = alloca i8*, align 8

  
  
  %buf = alloca %struct.foo, align 1

  
  store i8* %a, i8** %a.addr, align 8

  
  %gep = getelementptr inbounds %struct.foo, %struct.foo* %buf, i32 0, i32 0, i32 0

  
  %a2 = load i8*, i8** %a.addr, align 8

  
  %call = call i8* @strcpy(i8* %gep, i8* %a2)

  
  ret void
}

declare i8* @strcpy(i8*, i8*)
