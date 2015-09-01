

target datalayout = "e-m:e-i64:64-n32:64"
target triple = "powerpc64le-unknown-linux-gnu"




@__once_callable = external thread_local global i8**
@__once_call = external thread_local global void ()*

define i64 @call_once(i64 %flag, i8* %ptr) {
entry:
  %var = alloca i8*, align 8
  store i8* %ptr, i8** %var, align 8
  store i8** %var, i8*** @__once_callable, align 8
  store void ()* @__once_call_impl, void ()** @__once_call, align 8
  ret i64 %flag
}
















declare void @__once_call_impl()
