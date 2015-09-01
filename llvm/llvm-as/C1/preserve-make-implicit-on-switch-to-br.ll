





declare i32 @consume(i32*)
declare void @trap()

define i32 @copy-metadata(i32* %x) {

entry:
  %x.int = ptrtoint i32* %x to i64
  

  switch i64 %x.int, label %default [
    i64 0, label %is_null
  ], !make.implicit !0
  
default:
  %0 = call i32 @consume(i32* %x)
  ret i32 %0

is_null:
  call void @trap()
  unreachable
}

!0 = !{}

