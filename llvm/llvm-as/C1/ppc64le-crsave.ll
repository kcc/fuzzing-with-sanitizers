
target datalayout = "e-m:e-i64:64-n32:64"
target triple = "powerpc64le-unknown-linux-gnu"

@_ZTIi = external constant i8*
declare i8* @__cxa_allocate_exception(i64)
declare void @__cxa_throw(i8*, i8*, i8*)

define void @crsave() {
entry:
  call void asm sideeffect "", "~{cr2}"()
  call void asm sideeffect "", "~{cr3}"()
  call void asm sideeffect "", "~{cr4}"()

  %exception = call i8* @__cxa_allocate_exception(i64 4)
  %0 = bitcast i8* %exception to i32*
  store i32 0, i32* %0
  call void @__cxa_throw(i8* %exception, i8* bitcast (i8** @_ZTIi to i8*), i8* null)
  unreachable

return:                                           
  ret void
}





