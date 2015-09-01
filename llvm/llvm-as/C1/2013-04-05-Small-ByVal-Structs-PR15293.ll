













































%artz = type { i32 }
@static_val = constant %artz { i32 777 }

declare void @fooUseParam(%artz* )

define void @foo(%artz* byval %s) {
  call void @fooUseParam(%artz* %s)
  ret void
}

define void @foo2(%artz* byval %s, i32 %p, %artz* byval %s2) {
  call void @fooUseParam(%artz* %s)
  call void @fooUseParam(%artz* %s2)
  ret void
}


define void @doFoo() {
  call void @foo(%artz* byval @static_val)
  ret void
}

define void @doFoo2() {
  call void @foo2(%artz* byval @static_val, i32 0, %artz* byval @static_val)
  ret void
}

