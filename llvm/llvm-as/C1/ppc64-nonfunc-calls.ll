
target datalayout = "E-m:e-i64:64-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

%struct.cd = type { i64, i64, i64 }

@something = global [33 x i8] c"this is not really code, but...\0A\00", align 1
@tls_something = thread_local global %struct.cd zeroinitializer, align 8
@extern_something = external global %struct.cd


define void @foo() #0 {
entry:
  tail call void bitcast ([33 x i8]* @something to void ()*)() #0
  ret void












}


define void @bar() #0 {
entry:
  tail call void bitcast (%struct.cd* @tls_something to void ()*)() #0
  ret void












}


define void @ext() #0 {
entry:
  tail call void bitcast (%struct.cd* @extern_something to void ()*)() #0
  ret void












}

attributes #0 = { nounwind }

