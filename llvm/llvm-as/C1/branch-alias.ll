

















define void @ptr_test() #0 {
  
  
entry:
  %A = alloca i32*, align 8
  %RefCopy = alloca i64, align 8
  %i = alloca i32, align 4
  %AliasA1 = alloca i32**, align 8
  %ShouldAliasA = alloca i32*, align 8
  store i64 0, i64* %RefCopy, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         
  %1 = ptrtoint i32** %A to i64
  %2 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %1, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          
  %3 = load i32, i32* %i, align 4
  %sh_prom2 = zext i32 %3 to i64
  %shl3 = shl i64 1, %sh_prom2
  %4 = load i64, i64* %RefCopy, align 8
  %or = or i64 %4, %shl3
  store i64 %or, i64* %RefCopy, align 8
  br label %if.end

if.end:                                           
  br label %for.inc

for.inc:                                          
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          
  %6 = load i64, i64* %RefCopy, align 8
  %7 = inttoptr i64 %6 to i32**
  store i32** %7, i32*** %AliasA1, align 8
  %8 = load i32**, i32*** %AliasA1, align 8
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %ShouldAliasA, align 8
  ret void
}
