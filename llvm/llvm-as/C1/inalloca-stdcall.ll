

%Foo = type { i32, i32 }

declare x86_stdcallcc void @f(%Foo* inalloca %a)
declare x86_stdcallcc void @i(i32 %a)

define void @g() {

  %b = alloca inalloca %Foo


  %f1 = getelementptr %Foo, %Foo* %b, i32 0, i32 0
  %f2 = getelementptr %Foo, %Foo* %b, i32 0, i32 1
  store i32 13, i32* %f1
  store i32 42, i32* %f2


  call x86_stdcallcc void @f(%Foo* inalloca %b)




  call x86_stdcallcc void @i(i32 0)
  ret void
}
