







%struct.Six = type { [6 x i8] }

define x86_stdcallcc void @f(%struct.Six* byval %a) {
  ret void
}



define x86_thiscallcc void @g(i8* %this, %struct.Six* byval %a) {
  ret void
}



define x86_fastcallcc void @h(i32 inreg %x, i32 inreg %y, %struct.Six* byval %a) {
  ret void
}


