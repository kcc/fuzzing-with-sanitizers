

target datalayout = "e-i64:64-f80:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"

%A__vtbl = type { i8*, i32 (%A*)* }
%A = type { %A__vtbl* }

@A__vtblZ = constant %A__vtbl { i8* null, i32 (%A*)* @A.foo }

declare i32 @A.foo(%A* nocapture %this)

declare i8* @allocmemory(i64)

define void @storeA() {
body:
  %0 = tail call i8* @allocmemory(i64 32)
  %1 = bitcast i8* %0 to %A*


  store %A { %A__vtbl* @A__vtblZ }, %A* %1, align 8
  ret void
}

define void @storeStructOfA() {
body:
  %0 = tail call i8* @allocmemory(i64 32)
  %1 = bitcast i8* %0 to { %A }*


  store { %A } { %A { %A__vtbl* @A__vtblZ } }, { %A }* %1, align 8
  ret void
}

define void @storeArrayOfA() {
body:
  %0 = tail call i8* @allocmemory(i64 32)
  %1 = bitcast i8* %0 to [1 x %A]*


  store [1 x %A] [%A { %A__vtbl* @A__vtblZ }], [1 x %A]* %1, align 8
  ret void
}

define void @storeStructOfArrayOfA() {
body:
  %0 = tail call i8* @allocmemory(i64 32)
  %1 = bitcast i8* %0 to { [1 x %A] }*


  store { [1 x %A] } { [1 x %A] [%A { %A__vtbl* @A__vtblZ }] }, { [1 x %A] }* %1, align 8
  ret void
}

define %A @loadA() {
body:
  %0 = tail call i8* @allocmemory(i64 32)
  %1 = bitcast i8* %0 to %A*



  %2 = load %A, %A* %1, align 8
  ret %A %2
}

define { %A } @loadStructOfA() {
body:
  %0 = tail call i8* @allocmemory(i64 32)
  %1 = bitcast i8* %0 to { %A }*




  %2 = load { %A }, { %A }* %1, align 8
  ret { %A } %2
}

define [1 x %A] @loadArrayOfA() {
body:
  %0 = tail call i8* @allocmemory(i64 32)
  %1 = bitcast i8* %0 to [1 x %A]*




  %2 = load [1 x %A], [1 x %A]* %1, align 8
  ret [1 x %A] %2
}

define { [1 x %A] } @loadStructOfArrayOfA() {
body:
  %0 = tail call i8* @allocmemory(i64 32)
  %1 = bitcast i8* %0 to { [1 x %A] }*





  %2 = load { [1 x %A] }, { [1 x %A] }* %1, align 8
  ret { [1 x %A] } %2
}

define { %A } @structOfA() {
body:
  %0 = tail call i8* @allocmemory(i64 32)
  %1 = bitcast i8* %0 to { %A }*


  store { %A } { %A { %A__vtbl* @A__vtblZ } }, { %A }* %1, align 8
  %2 = load { %A }, { %A }* %1, align 8


  ret { %A } %2
}
