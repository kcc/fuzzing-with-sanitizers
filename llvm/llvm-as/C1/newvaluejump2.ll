




@Reg = common global i32 0, align 4
define i32 @main() nounwind {
entry:

  %Reg2 = alloca i32, align 4
  %0 = load i32, i32* %Reg2, align 4
  %1 = load i32, i32* @Reg, align 4
  %tobool = icmp sle i32 %0, %1
  br i1 %tobool, label %if.then, label %if.else

if.then:
  call void @bar(i32 1, i32 2)
  br label %if.end

if.else:
  call void @baz(i32 10, i32 20)
  br label %if.end

if.end:
  ret i32 0
}

declare void @bar(i32, i32)
declare void @baz(i32, i32)
