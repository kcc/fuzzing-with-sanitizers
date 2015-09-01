

%Foo = type { i32, i32 }

declare void @f(%Foo* inalloca %b)

define void @a() {

entry:
  %b = alloca inalloca %Foo


  %f1 = getelementptr %Foo, %Foo* %b, i32 0, i32 0
  %f2 = getelementptr %Foo, %Foo* %b, i32 0, i32 1
  store i32 13, i32* %f1
  store i32 42, i32* %f2


  call void @f(%Foo* inalloca %b)

  ret void
}

declare void @inreg_with_inalloca(i32 inreg %a, %Foo* inalloca %b)

define void @b() {

entry:
  %b = alloca inalloca %Foo


  %f1 = getelementptr %Foo, %Foo* %b, i32 0, i32 0
  %f2 = getelementptr %Foo, %Foo* %b, i32 0, i32 1
  store i32 13, i32* %f1
  store i32 42, i32* %f2


  call void @inreg_with_inalloca(i32 inreg 1, %Foo* inalloca %b)


  ret void
}

declare x86_thiscallcc void @thiscall_with_inalloca(i8* %a, %Foo* inalloca %b)

define void @c() {

entry:
  %b = alloca inalloca %Foo


  %f1 = getelementptr %Foo, %Foo* %b, i32 0, i32 0
  %f2 = getelementptr %Foo, %Foo* %b, i32 0, i32 1
  store i32 13, i32* %f1
  store i32 42, i32* %f2


  call x86_thiscallcc void @thiscall_with_inalloca(i8* null, %Foo* inalloca %b)


  ret void
}
