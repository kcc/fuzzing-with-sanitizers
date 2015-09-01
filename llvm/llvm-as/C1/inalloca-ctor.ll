

%Foo = type { i32, i32 }

%frame = type { %Foo, i32, %Foo }

declare void @f(%frame* inalloca %a)

declare void @Foo_ctor(%Foo* %this)

define void @g() {
entry:
  %args = alloca inalloca %frame
  %c = getelementptr %frame, %frame* %args, i32 0, i32 2



  call void @Foo_ctor(%Foo* %c)




  %b = getelementptr %frame, %frame* %args, i32 0, i32 1
  store i32 42, i32* %b

  %a = getelementptr %frame, %frame* %args, i32 0, i32 0
  call void @Foo_ctor(%Foo* %a)



  call void @f(%frame* inalloca %args)

  ret void
}
