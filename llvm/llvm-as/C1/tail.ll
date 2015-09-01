


target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%pair = type { i32, i32 }

declare i8* @foo(%pair*)

define internal void @bar(%pair* byval %Data) {




  tail call i8* @foo(%pair* %Data)
  ret void
}

define void @zed(%pair* byval %Data) {
  call void @bar(%pair* byval %Data)
  ret void
}
