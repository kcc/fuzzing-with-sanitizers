


%struct.MYstr = type { i8, i32 }
@mystr = internal global %struct.MYstr zeroinitializer 
define internal void @vfu1(%struct.MYstr* byval align 4 %u) nounwind {
entry:
  %0 = getelementptr %struct.MYstr, %struct.MYstr* %u, i32 0, i32 1 
  store i32 99, i32* %0, align 4

  %1 = getelementptr %struct.MYstr, %struct.MYstr* %u, i32 0, i32 0 
  store i8 97, i8* %1, align 4

  br label %return

return:                                           
  ret void
}

define internal i32 @vfu2(%struct.MYstr* byval align 4 %u) nounwind readonly {
entry:
  %0 = getelementptr %struct.MYstr, %struct.MYstr* %u, i32 0, i32 1 
  %1 = load i32, i32* %0

  %2 = getelementptr %struct.MYstr, %struct.MYstr* %u, i32 0, i32 0 
  %3 = load i8, i8* %2

  %4 = zext i8 %3 to i32
  %5 = add i32 %4, %1
  ret i32 %5
}

define i32 @unions() nounwind {
entry:
  call void @vfu1(%struct.MYstr* byval align 4 @mystr) nounwind
  %result = call i32 @vfu2(%struct.MYstr* byval align 4 @mystr) nounwind

  ret i32 %result
}

