


target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"
target triple = "x86_64-unknown-linux-gnu"
declare void @_Z3bari(i32)
define void @foo(i32 %x) {
entry:



  switch i32 %x, label %sw.epilog [
    i32 1, label %sw.bb
    i32 101, label %sw.bb.1
    i32 1001, label %sw.bb.2
  ]

sw.bb:                                            
  tail call void @_Z3bari(i32 4)
  br label %sw.epilog

sw.bb.1:                                          
  tail call void @_Z3bari(i32 5)
  br label %sw.epilog

sw.bb.2:                                          
  tail call void @_Z3bari(i32 6)
  br label %sw.epilog

sw.epilog:                                        
  ret void
}

define void @fooi72(i72 %x) {
entry:
  switch i72 %x, label %sw.epilog [
    i72 1, label %sw.bb
    i72 101, label %sw.bb.1
    i72 1001, label %sw.bb.2
  ]

sw.bb:                                            
  tail call void @_Z3bari(i32 4)
  br label %sw.epilog

sw.bb.1:                                          
  tail call void @_Z3bari(i32 5)
  br label %sw.epilog

sw.bb.2:                                          
  tail call void @_Z3bari(i32 6)
  br label %sw.epilog

sw.epilog:                                        
  ret void
}
