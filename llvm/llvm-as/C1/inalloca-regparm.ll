





declare x86_thiscallcc i32 @f(i32 %a, i32* inalloca %b)
define void @g() {
  %b = alloca inalloca i32
  store i32 2, i32* %b
  call x86_thiscallcc i32 @f(i32 0, i32* inalloca %b)
  ret void
}


