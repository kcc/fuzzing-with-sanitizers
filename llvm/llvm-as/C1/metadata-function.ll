



define linkonce void @foo() !linkonce !0 {
  unreachable
}


define void @bar() !bar !0 {
  call void @baz()
  unreachable
}


declare void @baz()



define void @a() !a !0 {
  unreachable
}



!0 = !{!"a"}
